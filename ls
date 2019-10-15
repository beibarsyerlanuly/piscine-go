TAR(1)                                                                 GNU TAR Manual                                                                 TAR(1)

NNAAMMEE
       tar - an archiving utility

SSYYNNOOPPSSIISS
   TTrraaddiittiioonnaall uussaaggee
       ttaarr {AA|cc|dd|rr|tt|uu|xx}[GGnnSSkkUUWWOOmmppssMMBBiiaajjJJzzZZhhPPllRRvvwwoo] [_A_R_G...]

   UUNNIIXX--ssttyyllee uussaaggee
       ttaarr --AA [_O_P_T_I_O_N_S] _A_R_C_H_I_V_E _A_R_C_H_I_V_E

       ttaarr --cc [--ff _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_F_I_L_E...]

       ttaarr --dd [--ff _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_F_I_L_E...]

       ttaarr --tt [--ff _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_M_E_M_B_E_R...]

       ttaarr --rr [--ff _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_F_I_L_E...]

       ttaarr --uu [--ff _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_F_I_L_E...]

       ttaarr --xx [--ff _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_M_E_M_B_E_R...]

   GGNNUU--ssttyyllee uussaaggee
       ttaarr {----ccaatteennaattee|----ccoonnccaatteennaattee} [_O_P_T_I_O_N_S] _A_R_C_H_I_V_E _A_R_C_H_I_V_E

       ttaarr ----ccrreeaattee [----ffiillee _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_F_I_L_E...]

       ttaarr {----ddiiffff|----ccoommppaarree} [----ffiillee _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_F_I_L_E...]

       ttaarr ----ddeelleettee [----ffiillee _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_M_E_M_B_E_R...]

       ttaarr ----aappppeenndd [--ff _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_F_I_L_E...]

       ttaarr ----lliisstt [--ff _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_M_E_M_B_E_R...]

       ttaarr ----tteesstt--llaabbeell [----ffiillee _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_L_A_B_E_L...]

       ttaarr ----uuppddaattee [----ffiillee _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_F_I_L_E...]

       ttaarr ----uuppddaattee [--ff _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_F_I_L_E...]

       ttaarr {----eexxttrraacctt|----ggeett} [--ff _A_R_C_H_I_V_E] [_O_P_T_I_O_N_S] [_M_E_M_B_E_R...]

NNOOTTEE
       This manpage is a short description of GNU ttaarr.  For a detailed discussion, including examples and usage recommendations, refer to the GGNNUU TTaarr MMaannuuaall
       available in texinfo format.  If the iinnffoo reader and the tar documentation are properly installed on your system, the command

           iinnffoo ttaarr

       should give you access to the complete manual.

       You can also view the manual using the info mode in eemmaaccss(1), or find it in various formats online at

           hhttttpp::////wwwwww..ggnnuu..oorrgg//ssooffttwwaarree//ttaarr//mmaannuuaall

       If any discrepancies occur between this manpage and the GGNNUU TTaarr MMaannuuaall, the later shall be considered the authoritative source.

DDEESSCCRRIIPPTTIIOONN
       GNU ttaarr is an archiving program designed to store multiple files in a single file (an aarrcchhiivvee), and to manipulate such archives.  The archive can  be
       either  a regular file or a device (e.g. a tape drive, hence the name of the program, which stands for ttape aarrchiver), which can be located either on
       the local or on a remote machine.

   OOppttiioonn ssttyylleess
       Options to GNU ttaarr can be given in three different styles.  In ttrraaddiittiioonnaall ssttyyllee, the first argument is a cluster of option letters  and  all  subse‐
       quent  arguments  supply  arguments to those options that require them.  The arguments are read in the same order as the option letters.  Any command
       line words that remain after all options has been processed are treated as non-optional arguments: file or archive member names.

       For example, the cc option requires creating the archive, the vv option requests the verbose operation, and the ff option takes an  argument  that  sets
       the  name  of the archive to operate upon.  The following command, written in the traditional style, instructs tar to store all files from the direc‐
       tory //eettcc into the archive file eettcc..ttaarr verbosely listing the files being archived:

       ttaarr ccffvv aa..ttaarr //eettcc

       In UUNNIIXX or sshhoorrtt--ooppttiioonn ssttyyllee, each option letter is prefixed with a single dash, as in other command line utilities.  If an option  takes  argument,
       the argument follows it, either as a separate command line word, or immediately following the option.  However, if the option takes an ooppttiioonnaall argu‐
       ment, the argument must follow the option letter without any intervening whitespace, as in --gg//ttmmpp//ssnnaarr..ddbb.

       Any number of options not taking arguments can be clustered together after a single dash, e.g. --vvkkpp.  Options that take arguments (whether  mandatory
       or optional), can appear at the end of such a cluster, e.g. --vvkkppff aa..ttaarr.

       The example command above written in the sshhoorrtt--ooppttiioonn ssttyyllee could look like:

       ttaarr --ccvvff aa..ttaarr //eettcc
       or
       ttaarr --cc --vv --ff aa..ttaarr //eettcc

       In  GGNNUU  or lloonngg--ooppttiioonn ssttyyllee, each option begins with two dashes and has a meaningful name, consisting of lower-case letters and dashes.  When used,
       the long option can be abbreviated to its initial letters, provided that this does not create ambiguity.  Arguments to long options are supplied  ei‐
       ther  as  a  separate  command line word, immediately following the option, or separated from the option by an equals sign with no intervening white‐
       space.  Optional arguments must always use the latter method.

       Here are several ways of writing the example command in this style:

       ttaarr ----ccrreeaattee ----ffiillee aa..ttaarr ----vveerrbboossee //eettcc
       or (abbreviating some options):
       ttaarr ----ccrree ----ffiillee==aa..ttaarr ----vveerrbb //eettcc

       The options in all three styles can be intermixed, although doing so with old options is not encouraged.

   OOppeerraattiioonn mmooddee
       The options listed in the table below tell GNU ttaarr what operation it is to perform.  Exactly one of them must be given.  Meaning of non-optional  ar‐
       guments depends on the operation mode requested.

       --AA, ----ccaatteennaattee, ----ccoonnccaatteennaattee
              Append archive to the end of another archive.  The arguments are treated as the names of archives to append.  All archives must be of the same
              format as the archive they are appended to, otherwise the resulting archive might be unusable with non-GNU  implementations  of  ttaarr.   Notice
              also  that when more than one archive is given, the members from archives other than the first one will be accessible in the resulting archive
              only if using the --ii (----iiggnnoorree--zzeerrooss) option.

              Compressed archives cannot be concatenated.

       --cc, ----ccrreeaattee
              Create a new archive.  Arguments supply the names of the files to be archived.  Directories are archived recursively, unless  the  ----nnoo--rreeccuurr‐‐
              ssiioonn option is given.

       --dd, ----ddiiffff, ----ccoommppaarree
              Find  differences between archive and file system.  The arguments are optional and specify archive members to compare.  If not given, the cur‐
              rent working directory is assumed.

       ----ddeelleettee
              Delete from the archive.  The arguments supply names of the archive members to be removed.  At least one argument must be given.

              This option does not operate on compressed archives.  There is no short option equivalent.

       --rr, ----aappppeenndd
              Append files to the end of an archive.  Arguments have the same meaning as for --cc (----ccrreeaattee).

       --tt, ----lliisstt
              List the contents of an archive.  Arguments are optional.  When given, they specify the names of the members to list.

       ----tteesstt--llaabbeell
              Test the archive volume label and exit.  When used without arguments, it prints the volume label (if any) and exits with status 00.   When  one
              or  more  command  line arguments are given.  ttaarr compares the volume label with each argument.  It exits with code 00 if a match is found, and
              with code 11 otherwise.  No output is displayed, unless used together with the --vv (----vveerrbboossee) option.

              There is no short option equivalent for this option.

       --uu, ----uuppddaattee
              Append files which are newer than the corresponding copy in the archive.  Arguments have the same meaning as with --cc and --rr options.   Notice,
              that  newer files don't replace their old archive copies, but instead are appended to the end of archive.  The resulting archive can thus con‐
              tain several members of the same name, corresponding to various versions of the same file.

       --xx, ----eexxttrraacctt, ----ggeett
              Extract files from an archive.  Arguments are optional.  When given, they specify names of the archive members to be extracted.

       ----sshhooww--ddeeffaauullttss
              Show built-in defaults for various ttaarr options and exit.  No arguments are allowed.

       --??, ----hheellpp
              Display a short option summary and exit.  No arguments allowed.

       ----uussaaggee
              Display a list of available options and exit.  No arguments allowed.

       ----vveerrssiioonn
              Print program version and copyright information and exit.

OOPPTTIIOONNSS
   OOppeerraattiioonn mmooddiiffiieerrss
       ----cchheecckk--ddeevviiccee
              Check device numbers when creating incremental archives (default).

       --gg, ----lliisstteedd--iinnccrreemmeennttaall=_F_I_L_E
              Handle new GNU-format incremental backups.  _F_I_L_E is the name of a ssnnaappsshhoott ffiillee, where tar stores additional information which is used to  de‐
              cide which files changed since the previous incremental dump and, consequently, must be dumped again.  If _F_I_L_E does not exist when creating an
              archive, it will be created and all files will be added to the resulting archive (the lleevveell 00 dump).  To create incremental archives  of  non-
              zero level NN, create a copy of the snapshot file created during the level NN--11, and use it as _F_I_L_E.

              When  listing or extracting, the actual contents of _F_I_L_E is not inspected, it is needed only due to syntactical requirements.  It is therefore
              common practice to use //ddeevv//nnuullll in its place.

       ----hhoollee--ddeetteeccttiioonn=_M_E_T_H_O_D
              Use _M_E_T_H_O_D to detect holes in sparse files.  This option implies ----ssppaarrssee.  Valid values for _M_E_T_H_O_D are sseeeekk and rraaww.  Default  is  sseeeekk  with
              fallback to rraaww when not applicable.

       --GG, ----iinnccrreemmeennttaall
              Handle old GNU-format incremental backups.

       ----iiggnnoorree--ffaaiilleedd--rreeaadd
              Do not exit with nonzero on unreadable files.

       ----lleevveell=_N_U_M_B_E_R
              Set dump level for created listed-incremental archive.  Currently only ----lleevveell==00 is meaningful: it instructs ttaarr to truncate the snapshot file
              before dumping, thereby forcing a level 0 dump.

       --nn, ----sseeeekk
              Assume the archive is seekable.  Normally ttaarr determines automatically whether the archive can be seeked or not.  This option is intended  for
              use  in  cases  when  such  recognition  fails.   It  takes  effect only if the archive is open for reading (e.g. with ----lliisstt or ----eexxttrraacctt op‐
              tions).

       ----nnoo--cchheecckk--ddeevviiccee
              Do not check device numbers when creating incremental archives.

       ----nnoo--sseeeekk
              Assume the archive is not seekable.

       ----ooccccuurrrreennccee[=_N]
              Process only the _Nth occurrence of each file in the archive.  This option is valid only when used  with  one  of  the  following  subcommands:
              ----ddeelleettee, ----ddiiffff, ----eexxttrraacctt or ----lliisstt and when a list of files is given either on the command line or via the --TT option.  The default _N is 11.

       ----rreessttrriicctt
              Disable the use of some potentially harmful options.

       ----ssppaarrssee--vveerrssiioonn=_M_A_J_O_R[._M_I_N_O_R]
              Set  version of the sparse format to use (implies ----ssppaarrssee).  This option implies ----ssppaarrssee.  Valid argument values are 00..00, 00..11, and 11..00.  For
              a detailed discussion of sparse formats, refer to the GGNNUU TTaarr MMaannuuaall, appendix DD, "SSppaarrssee FFoorrmmaattss".  Using iinnffoo reader,  it  can  be  accessed
              running the following command: iinnffoo ttaarr ''SSppaarrssee FFoorrmmaattss''.

       --SS, ----ssppaarrssee
              Handle  sparse  files  efficiently.   Some files in the file system may have segments which were actually never written (quite often these are
              database files created by such systems as DDBBMM).  When given this option, ttaarr attempts to determine if the file is sparse  prior  to  archiving
              it, and if so, to reduce the resulting archive size by not dumping empty parts of the file.

   OOvveerrwwrriittee ccoonnttrrooll
       These options control ttaarr actions when extracting a file over an existing copy on disk.

       --kk, ----kkeeeepp--oolldd--ffiilleess
              Don't replace existing files when extracting.

       ----kkeeeepp--nneewweerr--ffiilleess
              Don't replace existing files that are newer than their archive copies.

       ----kkeeeepp--ddiirreeccttoorryy--ssyymmlliinnkk
              Don't replace existing symlinks to directories when extracting.

       ----nnoo--oovveerrwwrriittee--ddiirr
              Preserve metadata of existing directories.

       ----oonnee--ttoopp--lleevveell[==_D_I_R]
              Extract  all  files into _D_I_R, or, if used without argument, into a subdirectory named by the base name of the archive (minus standard compres‐
              sion suffixes recognizable by ----aauuttoo--ccoommpprreessss))..

       ----oovveerrwwrriittee
              Overwrite existing files when extracting.

       ----oovveerrwwrriittee--ddiirr
              Overwrite metadata of existing directories when extracting (default).

       ----rreeccuurrssiivvee--uunnlliinnkk
              Recursively remove all files in the directory prior to extracting it.

       ----rreemmoovvee--ffiilleess
              Remove files from disk after adding them to the archive.

       ----sskkiipp--oolldd--ffiilleess
              Don't replace existing files when extracting, silently skip over them.

       --UU, ----uunnlliinnkk--ffiirrsstt
              Remove each file prior to extracting over it.

       --WW, ----vveerriiffyy
              Verify the archive after writing it.

   OOuuttppuutt ssttrreeaamm sseelleeccttiioonn
       ----iiggnnoorree--ccoommmmaanndd--eerrrroorr

       Ignore subprocess exit codes.

       ----nnoo--iiggnnoorree--ccoommmmaanndd--eerrrroorr
              Treat non-zero exit codes of children as error (default).

       --OO, ----ttoo--ssttddoouutt
              Extract files to standard output.

       ----ttoo--ccoommmmaanndd=_C_O_M_M_A_N_D
              Pipe extracted files to _C_O_M_M_A_N_D.  The argument is the pathname of an external program, optionally with command line  arguments.   The  program
              will  be invoked and the contents of the file being extracted supplied to it on its standard output.  Additional data will be supplied via the
              following environment variables:

              TTAARR__FFIILLEETTYYPPEE
                     Type of the file. It is a single letter with the following meaning:

                             f           Regular file
                             d           Directory
                             l           Symbolic link
                             h           Hard link
                             b           Block device
                             c           Character device

                     Currently only regular files are supported.

              TTAARR__MMOODDEE
                     File mode, an octal number.

              TTAARR__FFIILLEENNAAMMEE
                     The name of the file.

              TTAARR__RREEAALLNNAAMMEE
                     Name of the file as stored in the archive.

              TTAARR__UUNNAAMMEE
                     Name of the file owner.

              TTAARR__GGNNAAMMEE
                     Name of the file owner group.

              TTAARR__AATTIIMMEE
                     Time of last access. It is a decimal number, representing seconds since the Epoch.  If the archive provides times with nanosecond  pre‐
                     cision, the nanoseconds are appended to the timestamp after a decimal point.

              TTAARR__MMTTIIMMEE
                     Time of last modification.

              TTAARR__CCTTIIMMEE
                     Time of last status change.

              TTAARR__SSIIZZEE
                     Size of the file.

              TTAARR__UUIIDD
                     UID of the file owner.

              TTAARR__GGIIDD
                     GID of the file owner.

              Additionally, the following variables contain information about ttaarr operation mode and the archive being processed:

              TTAARR__VVEERRSSIIOONN
                     GNU ttaarr version number.

              TTAARR__AARRCCHHIIVVEE
                     The name of the archive ttaarr is processing.

              TTAARR__BBLLOOCCKKIINNGG__FFAACCTTOORR
                     Current blocking factor, i.e. number of 512-byte blocks in a record.

              TTAARR__VVOOLLUUMMEE
                     Ordinal number of the volume ttaarr is processing (set if reading a multi-volume archive).

              TTAARR__FFOORRMMAATT
                     Format of the archive being processed.  One of: ggnnuu, oollddggnnuu, ppoossiixx, uussttaarr, vv77.  TTAARR__SSUUBBCCOOMMMMAANNDD A short option (with a leading dash) de‐
                     scribing the operation ttaarr is executing.

   HHaannddlliinngg ooff ffiillee aattttrriibbuutteess
       ----aattiimmee--pprreesseerrvvee[=_M_E_T_H_O_D]
              Preserve access times on dumped files, either by restoring the times after reading (_M_E_T_H_O_D=rreeppllaaccee, this is the default) or by not setting the
              times in the first place (_M_E_T_H_O_D=ssyysstteemm)

       ----ddeellaayy--ddiirreeccttoorryy--rreessttoorree
              Delay  setting  modification times and permissions of extracted directories until the end of extraction.  Use this option when extracting from
              an archive which has unusual member ordering.

       ----ggrroouupp=_N_A_M_E[:_G_I_D]
              Force _N_A_M_E as group for added files.  If _G_I_D is not supplied, _N_A_M_E can be either a user name or numeric GID.  In this case  the  missing  part
              (GID or name) will be inferred from the current host's group database.

              When used with ----ggrroouupp--mmaapp=_F_I_L_E, affects only those files whose owner group is not listed in _F_I_L_E.

       ----ggrroouupp--mmaapp=_F_I_L_E
              Read group translation map from _F_I_L_E.  Empty lines are ignored.  Comments are introduced with ## sign and extend to the end of line.  Each non-
              empty line in _F_I_L_E defines translation for a single group.  It must consist of two fields, delimited by any amount of whitespace:

              _O_L_D_G_R_P _N_E_W_G_R_P[::_N_E_W_G_I_D]

              _O_L_D_G_R_P is either a valid group name or a GID prefixed with ++.  Unless _N_E_W_G_I_D is supplied, _N_E_W_G_R_P must also be either a valid group name  or  a
              ++_G_I_D.  Otherwise, both _N_E_W_G_R_P and _N_E_W_G_I_D need not be listed in the system group database.

              As a result, each input file with owner group _O_L_D_G_R_P will be stored in archive with owner group _N_E_W_G_R_P and GID _N_E_W_G_I_D.

       ----mmooddee=_C_H_A_N_G_E_S
              Force symbolic mode _C_H_A_N_G_E_S for added files.

       ----mmttiimmee=_D_A_T_E_-_O_R_-_F_I_L_E
              Set  mtime  for  added  files.  _D_A_T_E_-_O_R_-_F_I_L_E is either a date/time in almost arbitrary format, or the name of an existing file.  In the latter
              case the mtime of that file will be used.

       --mm, ----ttoouucchh
              Don't extract file modified time.

       ----nnoo--ddeellaayy--ddiirreeccttoorryy--rreessttoorree
              Cancel the effect of the prior ----ddeellaayy--ddiirreeccttoorryy--rreessttoorree option.

       ----nnoo--ssaammee--oowwnneerr
              Extract files as yourself (default for ordinary users).

       ----nnoo--ssaammee--ppeerrmmiissssiioonnss
              Apply the user's umask when extracting permissions from the archive (default for ordinary users).

       ----nnuummeerriicc--oowwnneerr
              Always use numbers for user/group names.

       ----oowwnneerr=_N_A_M_E[:_U_I_D]
              Force _N_A_M_E as owner for added files.  If _U_I_D is not supplied, _N_A_M_E can be either a user name or numeric UID.  In this case  the  missing  part
              (UID or name) will be inferred from the current host's user database.

              When used with ----oowwnneerr--mmaapp=_F_I_L_E, affects only those files whose owner is not listed in _F_I_L_E.

       ----oowwnneerr--mmaapp=_F_I_L_E
              Read owner translation map from _F_I_L_E.  Empty lines are ignored.  Comments are introduced with ## sign and extend to the end of line.  Each non-
              empty line in _F_I_L_E defines translation for a single UID.  It must consist of two fields, delimited by any amount of whitespace:

              _O_L_D_U_S_R _N_E_W_U_S_R[::_N_E_W_U_I_D]

              _O_L_D_U_S_R is either a valid user name or a UID prefixed with ++.  Unless _N_E_W_U_I_D is supplied, _N_E_W_U_S_R must also be either a valid  user  name  or  a
              ++_U_I_D.  Otherwise, both _N_E_W_U_S_R and _N_E_W_U_I_D need not be listed in the system user database.

              As a result, each input file owned by _O_L_D_U_S_R will be stored in archive with owner name _N_E_W_U_S_R and UID _N_E_W_U_I_D.

       --pp, ----pprreesseerrvvee--ppeerrmmiissssiioonnss, ----ssaammee--ppeerrmmiissssiioonnss
              extract information about file permissions (default for superuser)

       ----pprreesseerrvvee
              Same as both --pp and --ss.

       ----ssaammee--oowwnneerr
              Try extracting files with the same ownership as exists in the archive (default for superuser).

       --ss, ----pprreesseerrvvee--oorrddeerr, ----ssaammee--oorrddeerr
              Sort names to extract to match archive

       ----ssoorrtt==_O_R_D_E_R
              When creating an archive, sort directory entries according to _O_R_D_E_R, which is one of nnoonnee, nnaammee, or iinnooddee.

              The default is ----ssoorrtt==nnoonnee, which stores archive members in the same order as returned by the operating system.

              Using ----ssoorrtt==nnaammee ensures the member ordering in the created archive is uniform and reproducible.

              Using ----ssoorrtt==iinnooddee reduces the number of disk seeks made when creating the archive and thus can considerably speed up archivation.  This sort‐
              ing order is supported only if the underlying system provides the necessary information.

   EExxtteennddeedd ffiillee aattttrriibbuutteess
       ----aaccllss Enable POSIX ACLs support.

       ----nnoo--aaccllss
              Disable POSIX ACLs support.

       ----sseelliinnuuxx
              Enable SELinux context support.

       ----nnoo--sseelliinnuuxx
              Disable SELinux context support.

       ----xxaattttrrss
              Enable extended attributes support.

       ----nnoo--xxaattttrrss
              Disable extended attributes support.

       ----xxaattttrrss--eexxcclluuddee==_P_A_T_T_E_R_N
              Specify the exclude pattern for xattr keys.  _P_A_T_T_E_R_N is a POSIX regular expression, e.g. ----xxaattttrrss--eexxcclluuddee==''^^uusseerr..'', to exclude attributes from
              the user namespace.

       ----xxaattttrrss--iinncclluuddee==_P_A_T_T_E_R_N
              Specify the include pattern for xattr keys.  _P_A_T_T_E_R_N is a POSIX regular expression.

   DDeevviiccee sseelleeccttiioonn aanndd sswwiittcchhiinngg
       --ff, ----ffiillee=_A_R_C_H_I_V_E
              Use  archive  file or device _A_R_C_H_I_V_E.  If this option is not given, ttaarr will first examine the environment variable `TAPE'.  If it is set, its
              value will be used as the archive name.  Otherwise, ttaarr will assume the compiled-in default.  The default value can be inspected either  using
              the ----sshhooww--ddeeffaauullttss option, or at the end of the ttaarr ----hheellpp output.

              An archive name that has a colon in it specifies a file or device on a remote machine.  The part before the colon is taken as the machine name
              or IP address, and the part after it as the file or device pathname, e.g.:

              --file=remotehost:/dev/sr0

              An optional username can be prefixed to the hostname, placing a @@ sign between them.

              By default, the remote host is accessed via the rrsshh(1) command.  Nowadays it is common to use sssshh(1) instead.  You can do  so  by  giving  the
              following command line option:

              --rsh-command=/usr/bin/ssh

              The  remote machine should have the rrmmtt(8) command installed.  If its pathname does not match ttaarr's default, you can inform ttaarr about the cor‐
              rect pathname using the ----rrmmtt--ccoommmmaanndd option.

       ----ffoorrccee--llooccaall
              Archive file is local even if it has a colon.

       --FF, ----iinnffoo--ssccrriipptt=_C_O_M_M_A_N_D, ----nneeww--vvoolluummee--ssccrriipptt=_C_O_M_M_A_N_D
              Run _C_O_M_M_A_N_D at the end of each tape (implies --MM).  The command can include arguments.  When started, it will inherit  ttaarr's  environment  plus
              the following variables:

              TTAARR__VVEERRSSIIOONN
                     GNU ttaarr version number.

              TTAARR__AARRCCHHIIVVEE
                     The name of the archive ttaarr is processing.

              TTAARR__BBLLOOCCKKIINNGG__FFAACCTTOORR
                     Current blocking factor, i.e. number of 512-byte blocks in a record.

              TTAARR__VVOOLLUUMMEE
                     Ordinal number of the volume ttaarr is processing (set if reading a multi-volume archive).

              TTAARR__FFOORRMMAATT
                     Format of the archive being processed.  One of: ggnnuu, oollddggnnuu, ppoossiixx, uussttaarr, vv77.

              TTAARR__SSUUBBCCOOMMMMAANNDD
                     A short option (with a leading dash) describing the operation ttaarr is executing.

              TTAARR__FFDD File descriptor which can be used to communicate the new volume name to ttaarr.

              If the info script fails, ttaarr exits; otherwise, it begins writing the next volume.

       --LL, ----ttaappee--lleennggtthh=_N
              Change  tape after writing _Nx1024 bytes.  If _N is followed by a size suffix (see the subsection SSiizzee ssuuffffiixxeess below), the suffix specifies the
              multiplicative factor to be used instead of 1024.

              This option implies --MM.

       --MM, ----mmuullttii--vvoolluummee
              Create/list/extract multi-volume archive.

       ----rrmmtt--ccoommmmaanndd=_C_O_M_M_A_N_D
              Use _C_O_M_M_A_N_D instead of rrmmtt when accessing remote archives.  See the description of the --ff option, above.

       ----rrsshh--ccoommmmaanndd=_C_O_M_M_A_N_D
              Use _C_O_M_M_A_N_D instead of rrsshh when accessing remote archives.  See the description of the --ff option, above.

       ----vvoollnnoo--ffiillee=_F_I_L_E
              When this option is used in conjunction with ----mmuullttii--vvoolluummee, ttaarr will keep track of which volume of a multi-volume archive it  is  working  in
              _F_I_L_E.

   DDeevviiccee bblloocckkiinngg
       --bb, ----bblloocckkiinngg--ffaaccttoorr=_B_L_O_C_K_S
              Set record size to _B_L_O_C_K_Sx551122 bytes.

       --BB, ----rreeaadd--ffuullll--rreeccoorrddss
              When listing or extracting, accept incomplete input records after end-of-file marker.

       --ii, ----iiggnnoorree--zzeerrooss
              Ignore  zeroed  blocks  in  archive.  Normally two consecutive 512-blocks filled with zeroes mean EOF and tar stops reading after encountering
              them.  This option instructs it to read further and is useful when reading archives created with the --AA option.

       ----rreeccoorrdd--ssiizzee=_N_U_M_B_E_R
              Set record size.  _N_U_M_B_E_R is the number of bytes per record.  It must be multiple of 551122.  It can can be suffixed  with  a  ssiizzee  ssuuffffiixx,  e.g.
              ----rreeccoorrdd--ssiizzee==1100KK, for 10 Kilobytes.  See the subsection SSiizzee ssuuffffiixxeess, for a list of valid suffixes.

   AArrcchhiivvee ffoorrmmaatt sseelleeccttiioonn
       --HH, ----ffoorrmmaatt=_F_O_R_M_A_T
              Create archive of the given format.  Valid formats are:

              ggnnuu    GNU tar 1.13.x format

              oollddggnnuu GNU format as per tar <= 1.12.

              ppaaxx, ppoossiixx
                     POSIX 1003.1-2001 (pax) format.

              uussttaarr  POSIX 1003.1-1988 (ustar) format.

              vv77     Old V7 tar format.

       ----oolldd--aarrcchhiivvee, ----ppoorrttaabbiilliittyy
              Same as ----ffoorrmmaatt==vv77.

       ----ppaaxx--ooppttiioonn=_k_e_y_w_o_r_d[[:]=_v_a_l_u_e][,_k_e_y_w_o_r_d[[:]=_v_a_l_u_e]]...
              Control pax keywords when creating PPAAXX archives (--HH ppaaxx).  This option is equivalent to the --oo option of the ppaaxx(1)uuttiilliittyy..

       ----ppoossiixx
              Same as ----ffoorrmmaatt==ppoossiixx.

       --VV, ----llaabbeell=_T_E_X_T
              Create archive with volume name _T_E_X_T.  If listing or extracting, use _T_E_X_T as a globbing pattern for volume name.

   CCoommpprreessssiioonn ooppttiioonnss
       --aa, ----aauuttoo--ccoommpprreessss
              Use archive suffix to determine the compression program.

       --II, ----uussee--ccoommpprreessss--pprrooggrraamm_=_C_O_M_M_A_N_D
              Filter data through _C_O_M_M_A_N_D.  It must accept the --dd option, for decompression.  The argument can contain command line options.

       --jj, ----bbzziipp22
              Filter the archive through bbzziipp22(1).

       --JJ, ----xxzz
              Filter the archive through xxzz(1).

       ----llzziipp Filter the archive through llzziipp(1).

       ----llzzmmaa Filter the archive through llzzmmaa(1).

       ----llzzoopp Filter the archive through llzzoopp(1).

       ----nnoo--aauuttoo--ccoommpprreessss
              Do not use archive suffix to determine the compression program.

       --zz, ----ggzziipp, ----gguunnzziipp, ----uunnggzziipp
              Filter the archive through ggzziipp(1).

       --ZZ, ----ccoommpprreessss, ----uunnccoommpprreessss
              Filter the archive through ccoommpprreessss(1).

       ----zzssttdd Filter the archive through zzssttdd(1).

   LLooccaall ffiillee sseelleeccttiioonn
       ----aadddd--ffiillee=_F_I_L_E
              Add _F_I_L_E to the archive (useful if its name starts with a dash).

       ----bbaacckkuupp[=_C_O_N_T_R_O_L]
              Backup before removal.  The _C_O_N_T_R_O_L argument, if supplied, controls the backup policy.  Its valid values are:

              nnoonnee, ooffff
                     Never make backups.

              tt, nnuummbbeerreedd
                     Make numbered backups.

              nniill, eexxiissttiinngg
                     Make numbered backups if numbered backups exist, simple backups otherwise.

              nneevveerr, ssiimmppllee
                     Always make simple backups

              If _C_O_N_T_R_O_L is not given, the value is taken from the VVEERRSSIIOONN__CCOONNTTRROOLL environment variable.  If it is not set, eexxiissttiinngg is assumed.

       --CC, ----ddiirreeccttoorryy=_D_I_R
              Change to _D_I_R before performing any operations.  This option is order-sensitive, i.e. it affects all options that follow.

       ----eexxcclluuddee=_P_A_T_T_E_R_N
              Exclude files matching _P_A_T_T_E_R_N, a gglloobb(3)-style wildcard pattern.

       ----eexxcclluuddee--bbaacckkuuppss
              Exclude backup and lock files.

       ----eexxcclluuddee--ccaacchheess
              Exclude contents of directories containing file CCAACCHHEEDDIIRR..TTAAGG, except for the tag file itself.

       ----eexxcclluuddee--ccaacchheess--aallll
              Exclude directories containing file CCAACCHHEEDDIIRR..TTAAGG and the file itself.

       ----eexxcclluuddee--ccaacchheess--uunnddeerr
              Exclude everything under directories containing CCAACCHHEEDDIIRR..TTAAGG

       ----eexxcclluuddee--iiggnnoorree==_F_I_L_E
              Before  dumping  a directory, see if it contains _F_I_L_E.  If so, read exclusion patterns from this file.  The patterns affect only the directory
              itself.

       ----eexxcclluuddee--iiggnnoorree--rreeccuurrssiivvee==_F_I_L_E
              Same as ----eexxcclluuddee--iiggnnoorree, except that patterns from _F_I_L_E affect both the directory and all its subdirectories.

       ----eexxcclluuddee--ttaagg=_F_I_L_E
              Exclude contents of directories containing _F_I_L_E, except for _F_I_L_E itself.

       ----eexxcclluuddee--ttaagg--aallll=_F_I_L_E
              Exclude directories containing _F_I_L_E.

       ----eexxcclluuddee--ttaagg--uunnddeerr=_F_I_L_E
              Exclude everything under directories containing _F_I_L_E.

       ----eexxcclluuddee--vvccss
              Exclude version control system directories.

       ----eexxcclluuddee--vvccss--iiggnnoorreess
              Exclude files that match patterns read from VCS-specific ignore files.  Supported files are: ..ccvvssiiggnnoorree, ..ggiittiiggnnoorree,  ..bbzzrriiggnnoorree,  and  ..hhggiigg‐‐
              nnoorree.

       --hh, ----ddeerreeffeerreennccee
              Follow symlinks; archive and dump the files they point to.

       ----hhaarrdd--ddeerreeffeerreennccee
              Follow hard links; archive and dump the files they refer to.

       --KK, ----ssttaarrttiinngg--ffiillee=_M_E_M_B_E_R
              Begin at the given member in the archive.

       ----nneewweerr--mmttiimmee=_D_A_T_E
              Work  on files whose data changed after the _D_A_T_E.  If _D_A_T_E starts with // or .. it is taken to be a file name; the mtime of that file is used as
              the date.

       ----nnoo--nnuullll
              Disable the effect of the previous ----nnuullll option.

       ----nnoo--rreeccuurrssiioonn
              Avoid descending automatically in directories.

       ----nnoo--uunnqquuoottee
              Do not unquote input file or member names.

       ----nnoo--vveerrbbaattiimm--ffiilleess--ffrroomm
              Treat each line read from a file list as if it were supplied in the command line.  I.e., leading and trailing whitespace is  removed  and,  if
              the resulting string begins with a dash, it is treated as ttaarr command line option.

              This is the default behavior.  The ----nnoo--vveerrbbaattiimm--ffiilleess--ffrroomm option is provided as a way to restore it after ----vveerrbbaattiimm--ffiilleess--ffrroomm option.

              This  option  is  positional:  it  affects all ----ffiilleess--ffrroomm options that occur after it in, until ----vveerrbbaattiimm--ffiilleess--ffrroomm option or end of line,
              whichever occurs first.

              It is implied by the ----nnoo--nnuullll option.

       ----nnuullll Instruct subsequent --TT options to read null-terminated names verbatim (disables special handling of names that start with a dash).

              See also ----vveerrbbaattiimm--ffiilleess--ffrroomm.

       --NN, ----nneewweerr=_D_A_T_E, ----aafftteerr--ddaattee=_D_A_T_E
              Only store files newer than DATE.  If _D_A_T_E starts with // or .. it is taken to be a file name; the ctime of that file is used as the date.

       ----oonnee--ffiillee--ssyysstteemm
              Stay in local file system when creating archive.

       --PP, ----aabbssoolluuttee--nnaammeess
              Don't strip leading slashes from file names when creating archives.

       ----rreeccuurrssiioonn
              Recurse into directories (default).

       ----ssuuffffiixx=_S_T_R_I_N_G
              Backup before removal, override usual suffix.  Default suffix is ~~, unless overridden by environment variable SSIIMMPPLLEE__BBAACCKKUUPP__SSUUFFFFIIXX.

       --TT, ----ffiilleess--ffrroomm=_F_I_L_E
              Get names to extract or create from _F_I_L_E.

              Unless specified otherwise, the _F_I_L_E must contain a list of names separated by ASCII LLFF (i.e. one name per line).  The names read are  handled
              the  same way as command line arguments.  They undergo quote removal and word splitting, and any string that starts with a -- is handled as ttaarr
              command line option.

              If this behavior is undesirable, it can be turned off using the ----vveerrbbaattiimm--ffiilleess--ffrroomm option.

              The ----nnuullll option instructs ttaarr that the names in _F_I_L_E are separated by ASCII NNUULL character, instead of LLFF.  It is useful if the list is  gen‐
              erated by ffiinndd(1) --pprriinntt00 predicate.

       ----uunnqquuoottee
              Unquote file or member names (default).

       ----vveerrbbaattiimm--ffiilleess--ffrroomm
              Treat  each  line obtained from a file list as a file name, even if it starts with a dash.  File lists are supplied with the ----ffiilleess--ffrroomm (--TT)
              option.  The default behavior is to handle names supplied in file lists as if they were typed in the command line,  i.e.  any  names  starting
              with a dash are treated as ttaarr options.  The ----vveerrbbaattiimm--ffiilleess--ffrroomm option disables this behavior.

              This option affects all ----ffiilleess--ffrroomm options that occur after it in the command line.  Its effect is reverted by the ----nnoo--vveerrbbaattiimm--ffiilleess--ffrroomm}}
              ooppttiioonn..

              TThhiiss ooppttiioonn iiss iimmpplliieedd bbyy tthhee ----nnuullll option.

              See also ----aadddd--ffiillee.

       --XX, ----eexxcclluuddee--ffrroomm=_F_I_L_E
              Exclude files matching patterns listed in FILE.

   FFiillee nnaammee ttrraannssffoorrmmaattiioonnss
       ----ssttrriipp--ccoommppoonneennttss=_N_U_M_B_E_R
              Strip _N_U_M_B_E_R leading components from file names on extraction.

       ----ttrraannssffoorrmm=_E_X_P_R_E_S_S_I_O_N, ----xxffoorrmm=_E_X_P_R_E_S_S_I_O_N
              Use sed replace _E_X_P_R_E_S_S_I_O_N to transform file names.

   FFiillee nnaammee mmaattcchhiinngg ooppttiioonnss
       These options affect both exclude and include patterns.

       ----aanncchhoorreedd
              Patterns match file name start.

       ----iiggnnoorree--ccaassee
              Ignore case.

       ----nnoo--aanncchhoorreedd
              Patterns match after any // (default for exclusion).

       ----nnoo--iiggnnoorree--ccaassee
              Case sensitive matching (default).

       ----nnoo--wwiillddccaarrddss
              Verbatim string matching.

       ----nnoo--wwiillddccaarrddss--mmaattcchh--ssllaasshh
              Wildcards do not match //.

       ----wwiillddccaarrddss
              Use wildcards (default for exclusion).

       ----wwiillddccaarrddss--mmaattcchh--ssllaasshh
              Wildcards match // (default for exclusion).

   IInnffoorrmmaattiivvee oouuttppuutt
       ----cchheecckkppooiinntt[=_N]
              Display progress messages every _Nth record (default 10).

       ----cchheecckkppooiinntt--aaccttiioonn=_A_C_T_I_O_N
              Run _A_C_T_I_O_N on each checkpoint.

       ----ccllaammpp--mmttiimmee
              Only set time when the file is more recent than what was given with --mtime.

       ----ffuullll--ttiimmee
              Print file time to its full resolution.

       ----iinnddeexx--ffiillee=_F_I_L_E
              Send verbose output to _F_I_L_E.

       --ll, ----cchheecckk--lliinnkkss
              Print a message if not all links are dumped.

       ----nnoo--qquuoottee--cchhaarrss=_S_T_R_I_N_G
              Disable quoting for characters from _S_T_R_I_N_G.

       ----qquuoottee--cchhaarrss=_S_T_R_I_N_G
              Additionally quote characters from _S_T_R_I_N_G.

       ----qquuoottiinngg--ssttyyllee=_S_T_Y_L_E
              Set quoting style for file and member names.  Valid values for _S_T_Y_L_E are lliitteerraall, sshheellll, sshheellll--aallwwaayyss, cc, cc--mmaayybbee, eessccaappee, llooccaallee, ccllooccaallee.

       --RR, ----bblloocckk--nnuummbbeerr
              Show block number within archive with each message.

       ----sshhooww--oommiitttteedd--ddiirrss
              When listing or extracting, list each directory that does not match search criteria.

       ----sshhooww--ttrraannssffoorrmmeedd--nnaammeess, ----sshhooww--ssttoorreedd--nnaammeess
              Show file or archive names after transformation by ----ssttrriipp and ----ttrraannssffoorrmm options.

       ----ttoottaallss[=_S_I_G_N_A_L]
              Print total bytes after processing the archive.  If _S_I_G_N_A_L is given, print total bytes when this signal is delivered.   Allowed  signals  are:
              SSIIGGHHUUPP, SSIIGGQQUUIITT, SSIIGGIINNTT, SSIIGGUUSSRR11, and SSIIGGUUSSRR22.  The SSIIGG prefix can be omitted.

       ----uuttcc  Print file modification times in UTC.

       --vv, ----vveerrbboossee
              Verbosely list files processed.

       ----wwaarrnniinngg=_K_E_Y_W_O_R_D
              Enable or disable warning messages identified by _K_E_Y_W_O_R_D.  The messages are suppressed if _K_E_Y_W_O_R_D is prefixed with nnoo-- and enabled otherwise.

              Multiple ----wwaarrnniinngg messages accumulate.

              Keywords controlling general ttaarr operation:

              aallll    Enable all warning messages.  This is the default.

              nnoonnee   Disable all warning messages.

              ffiilleennaammee--wwiitthh--nnuullss
                     "%s: file name read contains nul character"

              aalloonnee--zzeerroo--bblloocckk
                     "A lone zero block at %s"

              Keywords applicable for ttaarr ----ccrreeaattee:

              ccaacchheeddiirr
                     "%s: contains a cache directory tag %s; %s"

              ffiillee--sshhrraannkk
                     "%s: File shrank by %s bytes; padding with zeros"

              xxddeevv   "%s: file is on a different filesystem; not dumped"

              ffiillee--iiggnnoorreedd
                     "%s: Unknown file type; file ignored"
                     "%s: socket ignored"
                     "%s: door ignored"

              ffiillee--uunncchhaannggeedd
                     "%s: file is unchanged; not dumped"

              iiggnnoorree--aarrcchhiivvee
                     "%s: file is the archive; not dumped"

              ffiillee--rreemmoovveedd
                     "%s: File removed before we read it"

              ffiillee--cchhaannggeedd
                     "%s: file changed as we read it"

              ffaaiilleedd--rreeaadd
                     Suppresses warnings about unreadable files or directories. This keyword applies only if used together with the ----iiggnnoorree--ffaaiilleedd--rreeaadd op‐
                     tion.

              Keywords applicable for ttaarr ----eexxttrraacctt:

              eexxiissttiinngg--ffiillee
                     "%s: skipping existing file"

              ttiimmeessttaammpp
                     "%s: implausibly old time stamp %s"
                     "%s: time stamp %s is %s s in the future"

              ccoonnttiigguuoouuss--ccaasstt
                     "Extracting contiguous files as regular files"

              ssyymmlliinnkk--ccaasstt
                     "Attempting extraction of symbolic links as hard links"

              uunnkknnoowwnn--ccaasstt
                     "%s: Unknown file type '%c', extracted as normal file"

              iiggnnoorree--nneewweerr
                     "Current %s is newer or same age"

              uunnkknnoowwnn--kkeeyywwoorrdd
                     "Ignoring unknown extended header keyword '%s'"

              ddeeccoommpprreessss--pprrooggrraamm
                     Controls verbose description of failures occurring when trying to run alternative decompressor programs.  This warning is  disabled  by
                     default (unless ----vveerrbboossee is used).  A common example of what you can get when using this warning is:

                     $ ttaarr ----wwaarrnniinngg==ddeeccoommpprreessss--pprrooggrraamm --xx --ff aarrcchhiivvee..ZZ
                     ttaarr ((cchhiilldd)):: ccaannnnoott rruunn ccoommpprreessss:: NNoo ssuucchh ffiillee oorr ddiirreeccttoorryy
                     ttaarr ((cchhiilldd)):: ttrryyiinngg ggzziipp

                     This means that ttaarr first tried to decompress aarrcchhiivvee..ZZ using ccoommpprreessss, and, when that failed, switched to ggzziipp.

              rreeccoorrdd--ssiizzee
                     "Record size = %lu blocks"

              Keywords controlling incremental extraction:

              rreennaammee--ddiirreeccttoorryy
                     "%s: Directory has been renamed from %s"
                     "%s: Directory has been renamed"

              nneeww--ddiirreeccttoorryy
                     "%s: Directory is new"

              xxddeevv   "%s: directory is on a different device: not purging"

              bbaadd--dduummppddiirr
                     "Malformed dumpdir: 'X' never used"

       --ww, ----iinntteerraaccttiivvee, ----ccoonnffiirrmmaattiioonn
              Ask for confirmation for every action.

   CCoommppaattiibbiilliittyy ooppttiioonnss
       --oo     When creating, same as ----oolldd--aarrcchhiivvee.  When extracting, same as ----nnoo--ssaammee--oowwnneerr.

   SSiizzee ssuuffffiixxeess
               _S_u_f_f_i_x    _U_n_i_t_s                   _B_y_t_e _E_q_u_i_v_a_l_e_n_t
               b         Blocks                  _S_I_Z_E x 512
               B         Kilobytes               _S_I_Z_E x 1024
               c         Bytes                   _S_I_Z_E
               G         Gigabytes               _S_I_Z_E x 1024^3
               K         Kilobytes               _S_I_Z_E x 1024
               k         Kilobytes               _S_I_Z_E x 1024
               M         Megabytes               _S_I_Z_E x 1024^2
               P         Petabytes               _S_I_Z_E x 1024^5
               T         Terabytes               _S_I_Z_E x 1024^4
               w         Words                   _S_I_Z_E x 2

RREETTUURRNN VVAALLUUEE
       Tar exit code indicates whether it was able to successfully perform the requested operation, and if not, what kind of error occurred.

       00      Successful termination.

       11      _S_o_m_e  _f_i_l_e_s  _d_i_f_f_e_r_.  If tar was invoked with the ----ccoommppaarree (----ddiiffff, --dd) command line option, this means that some files in the archive differ
              from their disk counterparts.  If tar was given one of the ----ccrreeaattee, ----aappppeenndd or ----uuppddaattee options, this exit code means that some  files  were
              changed while being archived and so the resulting archive does not contain the exact copy of the file set.

       22      _F_a_t_a_l _e_r_r_o_r_.  This means that some fatal, unrecoverable error occurred.

       If a subprocess that had been invoked by ttaarr exited with a nonzero exit code, ttaarr itself exits with that code as well.  This can happen, for example,
       if a compression option (e.g. --zz) was used and the external compressor program failed.  Another example is rrmmtt failure during backup to a remote  de‐
       vice.

SSEEEE AALLSSOO
       bbzziipp22(1), ccoommpprreessss(1), ggzziipp(1), llzzmmaa(1), llzzoopp(1), rrmmtt(8), ssyymmlliinnkk(7), xxzz(1).

       Complete ttaarr manual: run iinnffoo ttaarr or use eemmaaccss(1) info mode to read it.

       Online copies of GGNNUU ttaarr documentation in various formats can be found at:

           hhttttpp::////wwwwww..ggnnuu..oorrgg//ssooffttwwaarree//ttaarr//mmaannuuaall

BBUUGG RREEPPOORRTTSS
       Report bugs to <bug-tar@gnu.org>.

CCOOPPYYRRIIGGHHTT
       Copyright © 2013 Free Software Foundation, Inc.
       License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted by law.

TAR                                                                   November 16, 2017                                                               TAR(1)