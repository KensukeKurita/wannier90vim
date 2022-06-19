"Language: Wannier90
"Last Change: 2022 Feb 21

if exists("b:current_syntax")
    finish
endif
""" From espresso.vim
" Comment
syntax match wanComment '!.*$'

" Number
syntax match wanNumber '\d\+'
syntax match wanNumber '[-+]\d\+'
syntax match wanNumber '\d\+.\d*'
syntax match wanNumber '[-+]\d\+.\d*'
syntax match wanNumber '[-+]\=\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match wanNumber '\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match wanNumber '[-+]\=\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'
syntax match wanNumber '\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'

" String
syntax region wanString start="'" end="'"

" Boolean
syntax match wanBoolean '\.[tT][rR][uU][eE]\.'
syntax match wanBoolean '\.[fF][aA][lL][sS][eE]\.'

""" Wannier90 originals
" Name list from user guide
syntax keyword wanKey num_wann
syntax keyword wanKey num_bands
syntax keyword wanKey unit_cell_cart
syntax keyword wanKey atoms_cart
syntax keyword wanKey atoms_frac
syntax keyword wanKey mp_grid
syntax keyword wanKey mp_grid_automatic
syntax match   wanKey '[kK]points'
syntax keyword wanKey gamma_only
syntax keyword wanKey spinors
syntax keyword wanKey spinor_projections
syntax keyword wanKey shell_list
syntax keyword wanKey search_shells
syntax keyword wanKey skip_B1_tests
syntax keyword wanKey nnkpts
syntax match   wanKey '[pP]rojections'
syntax keyword wanKey kmesh_tol
syntax keyword wanKey postproc_setup
syntax keyword wanKey cp_pp
syntax keyword wanKey calc_only_a
syntax keyword wanKey exclude_bands
syntax keyword wanKey select_projections
syntax keyword wanKey auto_projections
syntax keyword wanKey restart
syntax keyword wanKey iprint
syntax keyword wanKey length_unit
syntax keyword wanKey wvfn_formatted
syntax keyword wanKey spin
syntax keyword wanKey devel_flag
syntax keyword wanKey timing_level
syntax keyword wanKey optimisation
syntax keyword wanKey translate_home_cell
syntax keyword wanKey write_xyz
syntax keyword wanKey write_vdw_data
syntax keyword wanKey write_hr_diag
syntax keyword wanKey dis_win_min
syntax keyword wanKey dis_win_max
syntax keyword wanKey dis_froz_min
syntax keyword wanKey dis_froz_max
syntax keyword wanKey dis_num_iter
syntax keyword wanKey dis_mix_ratio
syntax keyword wanKey dis_conv_tol
syntax keyword wanKey dis_conv_window
syntax keyword wanKey dis_spheres_num
syntax keyword wanKey dis_spheres_first_wann
syntax keyword wanKey dis_spheres
syntax keyword wanKey num_iter
syntax keyword wanKey num_cg_steps
syntax keyword wanKey conv_window
syntax keyword wanKey conv_tol
syntax keyword wanKey precond
syntax keyword wanKey conv_noise_amp
syntax keyword wanKey conv_noise_num
syntax keyword wanKey num_dump_cycles
syntax keyword wanKey num_print_cycles
syntax keyword wanKey write_r2mn
syntax keyword wanKey guiding_centres
syntax keyword wanKey num_guide_cycles
syntax keyword wanKey num_no_guide_iter
syntax keyword wanKey trial_step
syntax keyword wanKey fixed_step
syntax keyword wanKey use_bloch_phases
syntax keyword wanKey site_symmetry
syntax keyword wanKey symmetrize_eps
syntax keyword wanKey slwf_num
syntax keyword wanKey slwf_constrain
syntax keyword wanKey slwf_lambda
syntax keyword wanKey slwf_centres
syntax keyword wanKey wannier_plot
syntax keyword wanKey wannier_plot_list
syntax keyword wanKey wannier_plot_supercell
syntax keyword wanKey wannier_plot_format
syntax keyword wanKey wannier_plot_mode
syntax keyword wanKey wannier_plot_radius
syntax keyword wanKey wannier_plot_scale
syntax keyword wanKey wannier_plot_spinor_mode
syntax keyword wanKey wannier_plot_spinor_phase
syntax keyword wanKey bands_plot
syntax match   wanKey '[kK]point_[pP]ath'
syntax keyword wanKey nnkpts
syntax keyword wanKey bands_num_points
syntax keyword wanKey bands_plot_format
syntax keyword wanKey bands_plot_project
syntax keyword wanKey bands_plot_mode
syntax keyword wanKey bands_plot_dim
syntax keyword wanKey fermi_surface_plot
syntax keyword wanKey fermi_surface_num_points
syntax keyword wanKey fermi_energy
syntax keyword wanKey fermi_energy_min
syntax keyword wanKey fermi_energy_max
syntax keyword wanKey fermi_energy_step
syntax keyword wanKey fermi_surface_plot_format
syntax keyword wanKey write_hr
syntax keyword wanKey write_hr
syntax keyword wanKey write_rmn
syntax keyword wanKey write_bvec
syntax keyword wanKey write_tb
syntax keyword wanKey hr_cutoff
syntax keyword wanKey dist_cutoff
syntax keyword wanKey dist_cutoff_mode
syntax keyword wanKey translation_centre_frac
syntax keyword wanKey use_ws_distance
syntax keyword wanKey ws_distance_tol
syntax keyword wanKey ws_search_size
syntax keyword wanKey write_u_matrices
syntax keyword wanKey slice_plot
syntax keyword wanKey slice_coord
syntax keyword wanKey slice_num_points
syntax keyword wanKey slice_plot_format
syntax keyword wanKey dos_plot
syntax keyword wanKey dos_num_points
syntax keyword wanKey dos_energy_step
syntax keyword wanKey dos_gaussian_width
syntax keyword wanKey dos_plot_format
syntax keyword wanKey transport
syntax keyword wanKey transport_mode
syntax keyword wanKey tran_win_min
syntax keyword wanKey tran_win_max
syntax keyword wanKey tran_energy_step
syntax keyword wanKey fermi_energy
syntax keyword wanKey tran_num_bb
syntax keyword wanKey tran_num_ll
syntax keyword wanKey tran_num_rr
syntax keyword wanKey tran_num_cc
syntax keyword wanKey tran_num_lc
syntax keyword wanKey tran_num_cr
syntax keyword wanKey tran_num_cell_ll
syntax keyword wanKey tran_num_cell_rr
syntax keyword wanKey tran_num_bandc
syntax keyword wanKey tran_write_ht
syntax keyword wanKey tran_read_ht
syntax keyword wanKey tran_use_same_lead
syntax keyword wanKey tran_group_threshold
syntax keyword wanKey hr_cutoff
syntax keyword wanKey dist_cutoff
syntax keyword wanKey dist_cutoff_mode
syntax keyword wanKey one_dim_axis
syntax keyword wanKey translation_centre_frac
syntax keyword wanKey real_lattice
syntax keyword wanKey recip_lattice

" Descriptors
syntax match wanNameDesc '[bB]egin'
syntax match wanNameDesc '[eE]nd'

let b:current_syntax = "wannier"

hi def link wanNumber   Constant
hi def link wanKey      Statement
hi def link wanString   Type
hi def link wanBoolean  PreProc
hi def link wanNameDesc PreProc
hi def link wanComment  Comment

