"Language: Wannier90
"Last Change: 2020-10-16

if exists("b:current_syntax")
    finish
endif

"From espresso.vim
syntax match wanComment '#.*'
syntax match wanComment '!.*$'

syntax match wanNumber '\d\+'
syntax match wanNumber '[-+]\d\+'
syntax match wanNumber '\d\+.\d*'
syntax match wanNumber '[-+]\d\+.\d*'
syntax match wanNumber '[-+]\=\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match wanNumber '\d[[:digit:]]*[dD][\-+]\=\d\+'
syntax match wanNumber '[-+]\=\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'
syntax match wanNumber '\d[[:digit:]]*\.\d*[dD][\-+]\=\d\+'

syntax match wanBoolean '[TF]$'
syntax match wanBoolean '\.[tT][rR][uU][eE]\.'
syntax match wanBoolean '\.[fF][aA][lL][sS][eE]\.'
hi def link wanNumber      Constant
hi def link wanString      Type
hi def link wanBoolean     PreProc
hi def link wanComment     Comment


"name list from user guide
syntax keyword wannierKey num_wann
syntax keyword wannierKey num_bands
syntax keyword wannierKey unit_cell_cart
syntax keyword wannierKey atoms_cart
syntax keyword wannierKey atoms_frac
syntax keyword wannierKey mp_grid
syntax keyword wannierKey mp_grid_automatic
syntax keyword wannierKey kpoints
syntax keyword wannierKey gamma_only
syntax keyword wannierKey spinors
syntax keyword wannierKey shell_list
syntax keyword wannierKey search_shells
syntax keyword wannierKey skip_B1_tests
syntax keyword wannierKey nnkpts
syntax keyword wannierKey kmesh_tol
syntax keyword wannierKey postproc_setup
syntax keyword wannierKey cp_pp
syntax keyword wannierKey calc_only_a
syntax keyword wannierKey exclude_bands
syntax keyword wannierKey select_projections
syntax keyword wannierKey auto_projections
syntax keyword wannierKey restart
syntax keyword wannierKey iprint
syntax keyword wannierKey length_unit
syntax keyword wannierKey wvfn_formatted
syntax keyword wannierKey spin
syntax keyword wannierKey devel_flag
syntax keyword wannierKey timing_level
syntax keyword wannierKey optimisation
syntax keyword wannierKey translate_home_cell
syntax keyword wannierKey write_xyz
syntax keyword wannierKey write_vdw_data
syntax keyword wannierKey write_hr_diag
syntax keyword wannierKey dis_win_min
syntax keyword wannierKey dis_win_max
syntax keyword wannierKey dis_froz_min
syntax keyword wannierKey dis_froz_max
syntax keyword wannierKey dis_num_iter
syntax keyword wannierKey dis_mix_ratio
syntax keyword wannierKey dis_conv_tol
syntax keyword wannierKey dis_conv_window
syntax keyword wannierKey dis_spheres_num
syntax keyword wannierKey dis_spheres_first_wann
syntax keyword wannierKey dis_spheres
syntax keyword wannierKey num_iter
syntax keyword wannierKey num_cg_steps
syntax keyword wannierKey conv_window
syntax keyword wannierKey conv_tol
syntax keyword wannierKey precond
syntax keyword wannierKey conv_noise_amp
syntax keyword wannierKey conv_noise_num
syntax keyword wannierKey num_dump_cycles
syntax keyword wannierKey num_print_cycles
syntax keyword wannierKey write_r2mn
syntax keyword wannierKey guiding_centres
syntax keyword wannierKey num_guide_cycles
syntax keyword wannierKey num_no_guide_iter
syntax keyword wannierKey trial_step
syntax keyword wannierKey fixed_step
syntax keyword wannierKey use_bloch_phases
syntax keyword wannierKey site_symmetry
syntax keyword wannierKey symmetrize_eps
syntax keyword wannierKey slwf_num
syntax keyword wannierKey slwf_constrain
syntax keyword wannierKey slwf_lambda
syntax keyword wannierKey slwf_centres
syntax keyword wannierKey wannier_plot
syntax keyword wannierKey wannier_plot_list
syntax keyword wannierKey wannier_plot_supercell
syntax keyword wannierKey wannier_plot_format
syntax keyword wannierKey wannier_plot_mode
syntax keyword wannierKey wannier_plot_radius
syntax keyword wannierKey wannier_plot_scale
syntax keyword wannierKey wannier_plot_spinor_mode
syntax keyword wannierKey wannier_plot_spinor_phase
syntax keyword wannierKey bands_plot
syntax keyword wannierKey kpoint_path
syntax keyword wannierKey bands_num_points
syntax keyword wannierKey bands_plot_format
syntax keyword wannierKey bands_plot_project
syntax keyword wannierKey bands_plot_mode
syntax keyword wannierKey bands_plot_dim
syntax keyword wannierKey fermi_surface_plot
syntax keyword wannierKey fermi_surface_num_points
syntax keyword wannierKey fermi_energy
syntax keyword wannierKey fermi_energy_min
syntax keyword wannierKey fermi_energy_max
syntax keyword wannierKey fermi_energy_step
syntax keyword wannierKey fermi_surface_plot_format
syntax keyword wannierKey write_hr
syntax keyword wannierKey write_hr
syntax keyword wannierKey write_rmn
syntax keyword wannierKey write_bvec
syntax keyword wannierKey write_tb
syntax keyword wannierKey hr_cutoff
syntax keyword wannierKey dist_cutoff
syntax keyword wannierKey dist_cutoff_mode
syntax keyword wannierKey translation_centre_frac
syntax keyword wannierKey use_ws_distance
syntax keyword wannierKey ws_distance_tol
syntax keyword wannierKey ws_search_size
syntax keyword wannierKey write_u_matrices
syntax keyword wannierKey slice_plot
syntax keyword wannierKey slice_coord
syntax keyword wannierKey slice_num_points
syntax keyword wannierKey slice_plot_format
syntax keyword wannierKey dos_plot
syntax keyword wannierKey dos_num_points
syntax keyword wannierKey dos_energy_step
syntax keyword wannierKey dos_gaussian_width
syntax keyword wannierKey dos_plot_format
syntax keyword wannierKey transport
syntax keyword wannierKey transport_mode
syntax keyword wannierKey tran_win_min
syntax keyword wannierKey tran_win_max
syntax keyword wannierKey tran_energy_step
syntax keyword wannierKey fermi_energy
syntax keyword wannierKey tran_num_bb
syntax keyword wannierKey tran_num_ll
syntax keyword wannierKey tran_num_rr
syntax keyword wannierKey tran_num_cc
syntax keyword wannierKey tran_num_lc
syntax keyword wannierKey tran_num_cr
syntax keyword wannierKey tran_num_cell_ll
syntax keyword wannierKey tran_num_cell_rr
syntax keyword wannierKey tran_num_bandc
syntax keyword wannierKey tran_write_ht
syntax keyword wannierKey tran_read_ht
syntax keyword wannierKey tran_use_same_lead
syntax keyword wannierKey tran_group_threshold
syntax keyword wannierKey hr_cutoff
syntax keyword wannierKey dist_cutoff
syntax keyword wannierKey dist_cutoff_mode
syntax keyword wannierKey one_dim_axis
syntax keyword wannierKey translation_centre_frac

hi def link wannierKey Statement

let b:current_syntax = "wannier"
