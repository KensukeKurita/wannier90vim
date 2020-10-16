import re
import datetime


def get_key(lines):
    """
    arv: str(include \n)
    return: list:keyword
    """
    
    result = []
    list_lines = lines.split("\n")
    for line in list_lines:
        if "\sc" in line:
            m = re.sub(r'.*{\\sc', '', line)
            m = re.sub(r'}.*', '', m)
            m = m.replace("\\", "")
            m = m.replace(" ", "")
            result.append(m)
    
    return result


def write_keywords_vim(keywords):
    """
    arv: list:keyword
    """

    text = '\n' + '"name list from user guide' + '\n'
    for key in keywords:
        text += "syntax keyword wannierKey {}\n".format(key)

    return text


def get_syntax_from_QE(file):

    text = '"From espresso.vim' + '\n'
    firstBoolean = True
    firstComment = True
    for line in open(file, "r").readlines():
        if '"' in line:
            continue

        if "espressoKey" in line:
            continue
        if "espressoComment" in line:
            if firstComment:
                text += "syntax match wanComment '#.*'" + "\n"
                firstComment = False
            text += line.replace("espressoComment", "wanComment") + "\n"
        if "espressoNumber" in line:
            text += line.replace("espressoNumber", "wanNumber")
        if "espressoString" in line:
            text += line.replace("espressoString", "wanString") 
        if "espressoBoolean" in line:
            if firstBoolean:
                text += "\n" + "syntax match wanBoolean '[TF]$'" + "\n"
                firstBoolean = False
            text += line.replace("espressoBoolean", "wanBoolean")

    return text


def get_header():
    text = '"Language: Wannier90' + "\n"
    text += '"Last Change: {}'.format(datetime.date.today()) + "\n" + "\n"

    text += 'if exists("b:current_syntax")' + "\n"
    text += '    finish' + "\n"
    text += 'endif' + "\n" + "\n"

    return text


def main(file_tex, file_espresso):

    with open(file_tex, "r") as f:
        context = f.read()
    text = context.replace("\n", "thisisreturnposition")
    m = re.findall(r'begin{tabular}.*?end{tabular}', text)
    
    data = []
    for a in m:
        data.append(a.replace("thisisreturnposition", "\n"))

    keywords = []
    for a in data:
        keywords.extend(get_key(a))
    
    with open("wannier.vim", "w") as f:
        f.write(get_header())
        f.write(get_syntax_from_QE(file_espresso))
        f.write(write_keywords_vim(keywords))
        f.write("\n" + "hi def link wannierKey Statement" + "\n")
        f.write('\n' + 'let b:current_syntax = "wannier"' + '\n')

    return 0


if __name__ == '__main__':
    main(file_tex="/home/kurita/code/wannier90-3.1.0/doc/user_guide/parameters.tex",
         file_espresso="/home/kurita/.vim/syntax/espresso.vim")
