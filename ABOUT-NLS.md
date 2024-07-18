# 1 Notes on the Free Translation Project

---

Free software is going international! The Free Translation Project is
a way to get maintainers of free software, translators, and users all
together, so that free software will gradually become able to speak many
languages. A few packages already provide translations for their
messages.

If you found this `ABOUT-NLS` file inside a distribution, you may
assume that the distributed package does use GNU `gettext` internally,
itself available at your nearest GNU archive site. But you do _not_
need to install GNU `gettext` prior to configuring, installing or using
this package with messages translated.

Installers will find here some useful hints. These notes also
explain how users should proceed for getting the programs to use the
available translations. They tell how people wanting to contribute and
work on translations can contact the appropriate team.

## 1.1 INSTALL Matters

Some packages are "localizable" when properly installed; the programs
they contain can be made to speak your own native language. Most such
packages use GNU `gettext`. Other packages have their own ways to
internationalization, predating GNU `gettext`.

By default, this package will be installed to allow translation of
messages. It will automatically detect whether the system already
provides the GNU `gettext` functions. Installers may use special
options at configuration time for changing the default behaviour. The
command:

     ./configure --disable-nls

will _totally_ disable translation of messages.

When you already have GNU `gettext` installed on your system and run
configure without an option for your new package, `configure` will
probably detect the previously built and installed `libintl` library
and will decide to use it. If not, you may have to to use the
`--with-libintl-prefix` option to tell `configure` where to look for it.

Internationalized packages usually have many `po/LL.po` files, where
LL gives an ISO 639 two-letter code identifying the language. Unless
translations have been forbidden at `configure` time by using the
`--disable-nls` switch, all available translations are installed
together with the package. However, the environment variable `LINGUAS`
may be set, prior to configuration, to limit the installed set.
`LINGUAS` should then contain a space separated list of two-letter
codes, stating which languages are allowed.

## 1.2 Using This Package

As a user, if your language has been installed for this package, you
only have to set the `LANG` environment variable to the appropriate
`LL_CC` combination. If you happen to have the `LC_ALL` or some other
`LC_xxx` environment variables set, you should unset them before
setting `LANG`, otherwise the setting of `LANG` will not have the
desired effect. Here `LL` is an ISO 639 two-letter language code, and
`CC` is an ISO 3166 two-letter country code. For example, let's
suppose that you speak German and live in Germany. At the shell
prompt, merely execute `setenv LANG de_DE` (in `csh`),
`export LANG; LANG=de_DE` (in `sh`) or `export LANG=de_DE` (in `bash`).
This can be done from your `.login` or `.profile` file, once and for
all.

You might think that the country code specification is redundant.
But in fact, some languages have dialects in different countries. For
example, `de_AT` is used for Austria, and `pt_BR` for Brazil. The
country code serves to distinguish the dialects.

The locale naming convention of `LL_CC`, with `LL` denoting the
language and `CC` denoting the country, is the one use on systems based
on GNU libc. On other systems, some variations of this scheme are
used, such as `LL` or `LL_CC.ENCODING`. You can get the list of
locales supported by your system for your language by running the
command `locale -a | grep '^LL'`.

Not all programs have translations for all languages. By default, an
English message is shown in place of a nonexistent translation. If you
understand other languages, you can set up a priority list of languages.
This is done through a different environment variable, called
`LANGUAGE`. GNU `gettext` gives preference to `LANGUAGE` over `LANG`
for the purpose of message handling, but you still need to have `LANG`
set to the primary language; this is required by other parts of the
system libraries. For example, some Swedish users who would rather
read translations in German than English for when Swedish is not
available, set `LANGUAGE` to `sv:de` while leaving `LANG` to `sv_SE`.

Special advice for Norwegian users: The language code for Norwegian
bokma\*l changed from `no` to `nb` recently (in 2003). During the
transition period, while some message catalogs for this language are
installed under `nb` and some older ones under `no`, it's recommended
for Norwegian users to set `LANGUAGE` to `nb:no` so that both newer and
older translations are used.

In the `LANGUAGE` environment variable, but not in the `LANG`
environment variable, `LL_CC` combinations can be abbreviated as `LL`
to denote the language's main dialect. For example, `de` is equivalent
to `de_DE` (German as spoken in Germany), and `pt` to `pt_PT`
(Portuguese as spoken in Portugal) in this context.

## 1.3 Translating Teams

For the Free Translation Project to be a success, we need interested
people who like their own language and write it well, and who are also
able to synergize with other translators speaking the same language.
Each translation team has its own mailing list. The up-to-date list of
teams can be found at the Free Translation Project's homepage,
`http://translationproject.org/`, in the "Teams" area.

If you'd like to volunteer to _work_ at translating messages, you
should become a member of the translating team for your own language.
The subscribing address is _not_ the same as the list itself, it has
`-request` appended. For example, speakers of Swedish can send a
message to `sv-request@li.org`, having this message body:

     subscribe

Keep in mind that team members are expected to participate
_actively_ in translations, or at solving translational difficulties,
rather than merely lurking around. If your team does not exist yet and
you want to start one, or if you are unsure about what to do or how to
get started, please write to `coordinator@translationproject.org` to
reach the coordinator for all translator teams.

The English team is special. It works at improving and uniformizing
the terminology in use. Proven linguistic skills are praised more than
programming skills, here.

## 1.4 Available Packages

Languages are not equally supported in all packages. The following
matrix shows the current state of internationalization, as of June 2010. The matrix shows, in regard of each package, for which languages
PO files have been submitted to translation coordination, with a
translation percentage of at least 50%.

     Ready PO files       af am an ar as ast az be be@latin bg bn_IN bs ca
                        +--------------------------------------------------+
     a2ps               |                       []                      [] |
     aegis              |                                                  |
     ant-phone          |                                                  |
     anubis             |                                                  |
     aspell             |                []                             [] |
     bash               |                                                  |
     bfd                |                                                  |
     bibshelf           |                []                                |
     binutils           |                                                  |
     bison              |                                                  |
     bison-runtime      |                []                                |
     bluez-pin          | []             []                                |
     bombono-dvd        |                                                  |
     buzztard           |                                                  |
     cflow              |                                                  |
     clisp              |                                                  |
     coreutils          |                                   []          [] |
     cpio               |                                                  |
     cppi               |                                                  |
     cpplib             |                                               [] |
     cryptsetup         |                                                  |
     dfarc              |                                                  |
     dialog             |                             []                [] |
     dico               |                                                  |
     diffutils          |                                               [] |
     dink               |                                                  |
     doodle             |                                                  |
     e2fsprogs          |                                               [] |
     enscript           |                                               [] |
     exif               |                                                  |
     fetchmail          |                                               [] |
     findutils          |                                   []             |
     flex               |                                               [] |
     freedink           |                                                  |
     gas                |                                                  |
     gawk               |                []                             [] |
     gcal               |                                               [] |
     gcc                |                                                  |
     gettext-examples   | []             []                 []          [] |
     gettext-runtime    |                                   []          [] |
     gettext-tools      |                                   []          [] |
     gip                |                                   []             |
     gjay               |                                                  |
     gliv               |                                   []             |
     glunarclock        |                []                 []             |
     gnubiff            |                                                  |
     gnucash            |                                               [] |
     gnuedu             |                                                  |
     gnulib             |                                                  |
     gnunet             |                                                  |
     gnunet-gtk         |                                                  |
     gnutls             |                                                  |
     gold               |                                                  |
     gpe-aerial         |                                                  |
     gpe-beam           |                                                  |
     gpe-bluetooth      |                                                  |
     gpe-calendar       |                                                  |
     gpe-clock          |                []                                |
     gpe-conf           |                                                  |
     gpe-contacts       |                                                  |
     gpe-edit           |                                                  |
     gpe-filemanager    |                                                  |
     gpe-go             |                                                  |
     gpe-login          |                                                  |
     gpe-ownerinfo      |                []                                |
     gpe-package        |                                                  |
     gpe-sketchbook     |                                                  |
     gpe-su             |                []                                |
     gpe-taskmanager    |                []                                |
     gpe-timesheet      |                []                                |
     gpe-today          |                []                                |
     gpe-todo           |                                                  |
     gphoto2            |                                                  |
     gprof              |                                   []             |
     gpsdrive           |                                                  |
     gramadoir          |                                                  |
     grep               |                                                  |
     grub               |                []                             [] |
     gsasl              |                                                  |
     gss                |                                                  |
     gst-plugins-bad    |                                   []             |
     gst-plugins-base   |                                   []             |
     gst-plugins-good   |                                   []             |
     gst-plugins-ugly   |                                   []             |
     gstreamer          | []                                []          [] |
     gtick              |                                                  |
     gtkam              |                       []                         |
     gtkorphan          |                                   []             |
     gtkspell           | []             []     []                         |
     gutenprint         |                                                  |
     hello              |                                   []             |
     help2man           |                                                  |
     hylafax            |                                                  |
     idutils            |                                                  |
     indent             |                                   []          [] |
     iso_15924          |                                                  |
     iso_3166           | []          []        []          []  []   [] [] |
     iso_3166_2         |                                                  |
     iso_4217           |                                                  |
     iso_639            |             [] []     []              []         |
     iso_639_3          |                                                  |
     jwhois             |                                                  |
     kbd                |                                                  |
     keytouch           |                                               [] |
     keytouch-editor    |                                                  |
     keytouch-keyboa... |                                               [] |
     klavaro            |          []                                      |
     latrine            |                                                  |
     ld                 |                                   []             |
     leafpad            |                                   []          [] |
     libc               |                                   []          [] |
     libexif            |                       ()                         |
     libextractor       |                                                  |
     libgnutls          |                                                  |
     libgpewidget       |                                                  |
     libgpg-error       |                                                  |
     libgphoto2         |                                                  |
     libgphoto2_port    |                                                  |
     libgsasl           |                                                  |
     libiconv           |                                   []             |
     libidn             |                                                  |
     lifelines          |                                                  |
     liferea            |                             []                [] |
     lilypond           |                                                  |
     linkdr             |          []                                      |
     lordsawar          |                                                  |
     lprng              |                                                  |
     lynx               |                                               [] |
     m4                 |                                                  |
     mailfromd          |                                                  |
     mailutils          |                                                  |
     make               |                                                  |
     man-db             |                                                  |
     man-db-manpages    |                                                  |
     minicom            |                                                  |
     mkisofs            |                                                  |
     myserver           |                                                  |
     nano               |                                   []          [] |
     opcodes            |                                                  |
     parted             |                                                  |
     pies               |                                                  |
     popt               |                                                  |
     psmisc             |                                                  |
     pspp               |                                               [] |
     pwdutils           |                                                  |
     radius             |                                               [] |
     recode             |                       []                      [] |
     rosegarden         |                                                  |
     rpm                |                                                  |
     rush               |                                                  |
     sarg               |                                                  |
     screem             |                                                  |
     scrollkeeper       |                    [] []                      [] |
     sed                |                []                             [] |
     sharutils          |                                   []          [] |
     shishi             |                                                  |
     skencil            |                                                  |
     solfege            |                                                  |
     solfege-manual     |                                                  |
     soundtracker       |                                                  |
     sp                 |                                                  |
     sysstat            |                                                  |
     tar                |                                   []             |
     texinfo            |                                                  |
     tin                |                                                  |
     unicode-han-tra... |                                                  |
     unicode-transla... |                                                  |
     util-linux-ng      |                                               [] |
     vice               |                                                  |
     vmm                |                                                  |
     vorbis-tools       |                                                  |
     wastesedge         |                                                  |
     wdiff              |                                                  |
     wget               |                       []                      [] |
     wyslij-po          |                                                  |
     xchat              |                []     []          []          [] |
     xdg-user-dirs      | []    []    [] []     []    []    []  []      [] |
     xkeyboard-config   |                                   []          [] |
                        +--------------------------------------------------+
                          af am an ar as ast az be be@latin bg bn_IN bs ca
                           6  0  1  2  3 19   1 10     3    28   3    1 38

                          crh cs da  de  el en en_GB en_ZA eo es et eu fa
                        +-------------------------------------------------+
     a2ps               |     [] []  []  []     []            [] []       |
     aegis              |        []  []                       []          |
     ant-phone          |        []  ()                                   |
     anubis             |        []  []                                   |
     aspell             |     [] []  []         []            []          |
     bash               |     []                           [] []          |
     bfd                |                                     []          |
     bibshelf           |        []  []                       []          |
     binutils           |                                     []          |
     bison              |            []  []                               |
     bison-runtime      |        []  []  []                      []       |
     bluez-pin          |     [] []  []  []                [] []          |
     bombono-dvd        |        []                                       |
     buzztard           |     [] []  []                                   |
     cflow              |        []  []                                   |
     clisp              |        []  []     []                []          |
     coreutils          |     [] []  []                          []       |
     cpio               |                                                 |
     cppi               |                                                 |
     cpplib             |        []  []                       []          |
     cryptsetup         |            []                                   |
     dfarc              |        []  []                       []          |
     dialog             |        []  []                    [] []    []    |
     dico               |                                                 |
     diffutils          |     [] []  []  []                [] []          |
     dink               |        []  []                       []          |
     doodle             |            []                                   |
     e2fsprogs          |     []     []                       []          |
     enscript           |        []  []         []                        |
     exif               |     () []  []                                   |
     fetchmail          |     [] []  ()  []     []            []          |
     findutils          |     [] []  []                                   |
     flex               |            []                       []          |
     freedink           |        []  []                       []          |
     gas                |                                     []          |
     gawk               |        []  []                       []          |
     gcal               |                                     []          |
     gcc                |            []                       []          |
     gettext-examples   |            []  []                [] []          |
     gettext-runtime    |        []  []                    [] []          |
     gettext-tools      |            []                       []    []    |
     gip                |        []  []                       []    []    |
     gjay               |            []                                   |
     gliv               |     [] []  []                                   |
     glunarclock        |        []  []                                   |
     gnubiff            |            ()                                   |
     gnucash            |     []     ()  ()     ()            ()          |
     gnuedu             |        []                           []          |
     gnulib             |            []                       []          |
     gnunet             |                                                 |
     gnunet-gtk         |        []                                       |
     gnutls             |     []     []                                   |
     gold               |                                     []          |
     gpe-aerial         |     [] []  []                       []          |
     gpe-beam           |     [] []  []                       []          |
     gpe-bluetooth      |        []  []                                   |
     gpe-calendar       |        []                                       |
     gpe-clock          |     [] []  []                       []          |
     gpe-conf           |     [] []  []                                   |
     gpe-contacts       |        []  []                       []          |
     gpe-edit           |        []  []                                   |
     gpe-filemanager    |        []  []                       []          |
     gpe-go             |     [] []  []                       []          |
     gpe-login          |        []  []                                   |
     gpe-ownerinfo      |     [] []  []                       []          |
     gpe-package        |        []  []                       []          |
     gpe-sketchbook     |     [] []  []                       []          |
     gpe-su             |     [] []  []                       []          |
     gpe-taskmanager    |     [] []  []                       []          |
     gpe-timesheet      |     [] []  []                       []          |
     gpe-today          |     [] []  []                       []          |
     gpe-todo           |        []  []                       []          |
     gphoto2            |     [] []  ()         []            []    []    |
     gprof              |        []  []                       []          |
     gpsdrive           |        []                           [] []       |
     gramadoir          |        []  []                    []             |
     grep               |     []                                          |
     grub               |        []  []                                   |
     gsasl              |            []                                   |
     gss                |                                                 |
     gst-plugins-bad    |     [] []  []                       []    []    |
     gst-plugins-base   |     [] []  []                       []    []    |
     gst-plugins-good   |     [] []  []  []                   []    []    |
     gst-plugins-ugly   |     [] []  []  []                   []    []    |
     gstreamer          |     [] []  []                       []    []    |
     gtick              |        []  ()                    []             |
     gtkam              |     [] []  ()                    [] []          |
     gtkorphan          |     [] []  []                    []             |
     gtkspell           |     [] []  []  []                [] []    []    |
     gutenprint         |        []  []         []                        |
     hello              |        []  []                    [] []          |
     help2man           |            []                                   |
     hylafax            |            []                       []          |
     idutils            |        []  []                                   |
     indent             |     [] []  []                    [] [] [] []    |
     iso_15924          |        []      ()                [] []          |
     iso_3166           | []  [] []  []  ()                [] [] [] ()    |
     iso_3166_2         |                ()                               |
     iso_4217           |     [] []  []  ()                   [] []       |
     iso_639            | []  [] []  []  ()                [] []          |
     iso_639_3          | []                                              |
     jwhois             |                                     []          |
     kbd                |     [] []  []  []                   []          |
     keytouch           |        []  []                                   |
     keytouch-editor    |        []  []                                   |
     keytouch-keyboa... |        []                                       |
     klavaro            |     [] []  []                    []             |
     latrine            |        []  ()                                   |
     ld                 |        []                           []          |
     leafpad            |     [] []  []  []                   []    []    |
     libc               |     [] []  []                       []          |
     libexif            |        []  []         ()                        |
     libextractor       |                                                 |
     libgnutls          |     []                                          |
     libgpewidget       |        []  []                                   |
     libgpg-error       |     []     []                                   |
     libgphoto2         |        []  ()                                   |
     libgphoto2_port    |        []  ()                             []    |
     libgsasl           |                                                 |
     libiconv           |     [] []  []                    []    []       |
     libidn             |     []     []                    []             |
     lifelines          |        []  ()                                   |
     liferea            |     []     []  []                   []    []    |
     lilypond           |     []     []                       []          |
     linkdr             |        []  []                       []          |
     lordsawar          |        []                                       |
     lprng              |                                                 |
     lynx               |     [] []  []                          []       |
     m4                 |     [] []  []  []                               |
     mailfromd          |                                                 |
     mailutils          |                                     []          |
     make               |        []  []                       []          |
     man-db             |                                                 |
     man-db-manpages    |                                                 |
     minicom            |     [] []  []                       []          |
     mkisofs            |                                                 |
     myserver           |                                                 |
     nano               |            []                       []    []    |
     opcodes            |            []                       []          |
     parted             |     []     []                                   |
     pies               |                                                 |
     popt               |     [] []  []                    [] []          |
     psmisc             |     []     []                             []    |
     pspp               |                                     []          |
     pwdutils           |        []                                       |
     radius             |                                     []          |
     recode             |     [] []  []  []                [] []          |
     rosegarden         |     ()     ()                       ()          |
     rpm                |        []  []                       []          |
     rush               |                                                 |
     sarg               |                                                 |
     screem             |                                                 |
     scrollkeeper       |     [] []  []         []            []          |
     sed                |     []     []  []                [] [] []       |
     sharutils          |        []  []                       [] []       |
     shishi             |                                                 |
     skencil            |        []  ()                       []          |
     solfege            |            []                    []    []       |
     solfege-manual     |                                  []    []       |
     soundtracker       |        []  []                       []          |
     sp                 |            []                                   |
     sysstat            |        []  []                             []    |
     tar                |     []     []                          [] []    |
     texinfo            |            []                    [] []          |
     tin                |            []                          []       |
     unicode-han-tra... |                                                 |
     unicode-transla... |                                                 |
     util-linux-ng      |     [] []  []                       []          |
     vice               |        ()  ()                                   |
     vmm                |            []                                   |
     vorbis-tools       |     []                           []             |
     wastesedge         |        []                                       |
     wdiff              |            []                       []          |
     wget               |     []     []                          []       |
     wyslij-po          |                                                 |
     xchat              |     []     []  []                   [] []       |
     xdg-user-dirs      | []  [] []  []  []                [] [] [] []    |
     xkeyboard-config   | []  [] []  []                    [] []          |
                        +-------------------------------------------------+
                          crh cs da  de  el en en_GB en_ZA eo es et eu fa
                           5  64 105 117 18  1   8     0   28 89 18 19  0

                          fi  fr  ga gl gu he hi hr hu hy id  is it ja ka kn
                        +----------------------------------------------------+
     a2ps               | []  []                          []        []       |
     aegis              |     []                                 []          |
     ant-phone          |     []                                 []          |
     anubis             | []  []                          []     []          |
     aspell             |     []  []                      []     []          |
     bash               | []  []                          []        []       |
     bfd                | []  []                          []                 |
     bibshelf           | []  []  []                      []     []          |
     binutils           | []  []                          []                 |
     bison              | []  []  []                      []                 |
     bison-runtime      | []  []  []                      []     [] []       |
     bluez-pin          | []  []  []                [] [] []  []    []       |
     bombono-dvd        | []                                                 |
     buzztard           |                                 []                 |
     cflow              | []      []                      []                 |
     clisp              |     []                                             |
     coreutils          |     []  []                []    []     []          |
     cpio               | []  []  []                      []                 |
     cppi               | []  []                                             |
     cpplib             | []  []                          []                 |
     cryptsetup         |     []                          []     []          |
     dfarc              | []  []                                 []          |
     dialog             |     []  [] []                   []  [] [] []       |
     dico               |                                                    |
     diffutils          | []  []  [] []    []       []    []     [] []       |
     dink               |     []                                             |
     doodle             |         []                             []          |
     e2fsprogs          |     []                          []                 |
     enscript           |     []  []             []       []                 |
     exif               | []  []                          []  [] [] []       |
     fetchmail          |     []                          []     [] []       |
     findutils          | []  []  []                []    []     []          |
     flex               | []  []  []                                         |
     freedink           | []  []                          []                 |
     gas                |     []                          []                 |
     gawk               |     []  []       []             []     () []       |
     gcal               |     []                                             |
     gcc                |                                 []                 |
     gettext-examples   | []  []  []                []    []     [] []       |
     gettext-runtime    | []  []  []                      []     [] []       |
     gettext-tools      |     []                          []     [] []       |
     gip                | []  []  [] []                   []        []       |
     gjay               | []                                                 |
     gliv               | []  ()                                             |
     glunarclock        | []      []                []    []                 |
     gnubiff            |     ()                          []     ()          |
     gnucash            | ()  ()           ()       ()           () []       |
     gnuedu             |     []                                 []          |
     gnulib             | []  []  []                []           [] []       |
     gnunet             |                                                    |
     gnunet-gtk         |     []                                             |
     gnutls             |     []                                 []          |
     gold               | []                              []                 |
     gpe-aerial         | []  []                          []                 |
     gpe-beam           | []  []                          []        []       |
     gpe-bluetooth      | []                              []     [] []       |
     gpe-calendar       | []                                        []       |
     gpe-clock          | []  []                    []    []        []       |
     gpe-conf           | []  []                          []        []       |
     gpe-contacts       | []  []                          []        []       |
     gpe-edit           | []                              []        []       |
     gpe-filemanager    | []                        []    []        []       |
     gpe-go             | []  []                    []    []        []       |
     gpe-login          | []                              []        []       |
     gpe-ownerinfo      | []  []                    []    []        []       |
     gpe-package        | []                              []        []       |
     gpe-sketchbook     | []  []                          []        []       |
     gpe-su             | []  []     []             []    []        []       |
     gpe-taskmanager    | []  []                    []    []        []       |
     gpe-timesheet      | []  []  []                      []        []       |
     gpe-today          | []  []  [] []             []    []        []       |
     gpe-todo           | []                              []        []       |
     gphoto2            | []  []                    []    []     [] []       |
     gprof              | []  []  []                      []                 |
     gpsdrive           |            []                   []     []          |
     gramadoir          |     []  []                      []                 |
     grep               | []                                     []          |
     grub               | []                        []    []     []          |
     gsasl              | []  []  []                      []     []          |
     gss                | []  []  []                      []     []          |
     gst-plugins-bad    | []  []                    []    []     [] []       |
     gst-plugins-base   | []  []                    []    []     [] []       |
     gst-plugins-good   | []  []                    []    []     [] []       |
     gst-plugins-ugly   | []  []                    []    []     [] []       |
     gstreamer          | []  []                    []    []     []          |
     gtick              | []  []  []                      []     []          |
     gtkam              |     []                    []    []     [] []       |
     gtkorphan          |     []                          []     []          |
     gtkspell           | []  []  [] []             [] [] []     [] []       |
     gutenprint         | []  []                    []           []          |
     hello              | []      []                      []                 |
     help2man           | []  []                                             |
     hylafax            |                                 []                 |
     idutils            | []  []  []                []    []     []          |
     indent             | []  []  [] []             []    []     [] []       |
     iso_15924          | []  ()                          []     []          |
     iso_3166           | []  ()  [] [] [] [] [] [] []    []     [] []       |
     iso_3166_2         |     ()                    []    []     []          |
     iso_4217           | []  ()                    []    []     [] []       |
     iso_639            | []  ()  []    []          []    []     [] []    [] |
     iso_639_3          |     ()                                 []       [] |
     jwhois             | []  []                    []    []     []          |
     kbd                |     []                          []                 |
     keytouch           | []  []  []                []    []     []          |
     keytouch-editor    | []      []                []    []     []          |
     keytouch-keyboa... | []      []                []    []     []          |
     klavaro            |            []             []                       |
     latrine            | []                              []     []          |
     ld                 | []  []  []                      []                 |
     leafpad            | []  []  []       []       []    []     [] ()       |
     libc               | []  []     []                   []        []       |
     libexif            |                                        []          |
     libextractor       |                                                    |
     libgnutls          |     []                                 []          |
     libgpewidget       | []      []                      []        []       |
     libgpg-error       |     []                                 []          |
     libgphoto2         |     []                                 [] []       |
     libgphoto2_port    |     []                                 [] []       |
     libgsasl           | []  []  []                      []     []          |
     libiconv           | []  []  []                      []     [] []       |
     libidn             | []  []                          []     []          |
     lifelines          |     ()                                             |
     liferea            |     []                    []           [] []       |
     lilypond           | []  []                                             |
     linkdr             | []               []    [] []           []          |
     lordsawar          |                                                    |
     lprng              |                                 []                 |
     lynx               |     []                    []    []     [] []       |
     m4                 | []  []  [] []                   []        []       |
     mailfromd          |                                                    |
     mailutils          |     []                          []                 |
     make               | []  []  [] []    []    []       []     [] []       |
     man-db             |                                 []     []          |
     man-db-manpages    |                                 []                 |
     minicom            | []  []                    []    []        []       |
     mkisofs            | []  []                          []     []          |
     myserver           |                                                    |
     nano               | []  []  [] []             []           []          |
     opcodes            | []  []  []                      []                 |
     parted             |     []                          []     [] []       |
     pies               |                                                    |
     popt               | []  []  [] []             []    []  [] [] []       |
     psmisc             | []  []                          []                 |
     pspp               |                                                    |
     pwdutils           |     []                          []                 |
     radius             |     []                          []                 |
     recode             | []  []  [] []    []       []    []     []          |
     rosegarden         | ()  ()                          ()     () ()       |
     rpm                |                                 []        []       |
     rush               |                                                    |
     sarg               |     []                                             |
     screem             |                                        [] []       |
     scrollkeeper       | []                        []    []     []          |
     sed                | []  []  [] []             []    []     [] []       |
     sharutils          | []  []  []                []    []     [] []       |
     shishi             |     []                                             |
     skencil            |     []                                             |
     solfege            | []  []     []                          []          |
     solfege-manual     |     []     []                                      |
     soundtracker       |     []                                 []          |
     sp                 |     []                                    ()       |
     sysstat            | []  []                          []     [] []       |
     tar                | []  []  []                []    []     [] []       |
     texinfo            |     []                          []     [] []       |
     tin                |     []                                             |
     unicode-han-tra... |                                                    |
     unicode-transla... |     []  []                                         |
     util-linux-ng      | []  []                    []    []     [] []       |
     vice               |     ()                    ()           ()          |
     vmm                |     []                                             |
     vorbis-tools       |                                 []                 |
     wastesedge         |     ()                                 ()          |
     wdiff              | []                                                 |
     wget               | []  []  []             [] []    []     [] []       |
     wyslij-po          | []  []                          []                 |
     xchat              | []  []        []    []    []    []     [] []    [] |
     xdg-user-dirs      | []  []  [] [] [] [] []    []    []  [] [] []    [] |
     xkeyboard-config   | []  []                    []    []     []          |
                        +----------------------------------------------------+
                          fi  fr  ga gl gu he hi hr hu hy id  is it ja ka kn
                          105 121 53 20  4  8  3  5 53  2 120  5 84 67  0  4

                          ko ku ky lg lt lv mk ml mn mr ms mt nb nds ne
                        +-----------------------------------------------+
     a2ps               |                               []              |
     aegis              |                                               |
     ant-phone          |                                               |
     anubis             |                               []    []        |
     aspell             |                         []                    |
     bash               |                                               |
     bfd                |                                               |
     bibshelf           |                []             []              |
     binutils           |                                               |
     bison              |                               []              |
     bison-runtime      |       []    [] []             []    []        |
     bluez-pin          |    [] []    [] []             []              |
     bombono-dvd        |                                               |
     buzztard           |                                               |
     cflow              |                                               |
     clisp              |                                               |
     coreutils          |          []                                   |
     cpio               |                                               |
     cppi               |                                               |
     cpplib             |                                               |
     cryptsetup         |                                               |
     dfarc              |                   []                          |
     dialog             |    []       [] []             []    []        |
     dico               |                                               |
     diffutils          |                []             []              |
     dink               |                                               |
     doodle             |                                               |
     e2fsprogs          |                                               |
     enscript           |                                               |
     exif               |                []                             |
     fetchmail          |                                               |
     findutils          |                                               |
     flex               |                                               |
     freedink           |                                     []        |
     gas                |                                               |
     gawk               |                                               |
     gcal               |                                               |
     gcc                |                                               |
     gettext-examples   |       []       []             [] []           |
     gettext-runtime    | []                                            |
     gettext-tools      | []                                            |
     gip                |                []             []              |
     gjay               |                                               |
     gliv               |                                               |
     glunarclock        |                []                             |
     gnubiff            |                                               |
     gnucash            | ()          ()                      ()     () |
     gnuedu             |                                               |
     gnulib             |                                               |
     gnunet             |                                               |
     gnunet-gtk         |                                               |
     gnutls             |                               []              |
     gold               |                                               |
     gpe-aerial         |                []                             |
     gpe-beam           |                []                             |
     gpe-bluetooth      |                []                []           |
     gpe-calendar       |                []                             |
     gpe-clock          | []    []       []             [] []           |
     gpe-conf           | []             []                             |
     gpe-contacts       | []             []                             |
     gpe-edit           |                []                             |
     gpe-filemanager    | []             []                             |
     gpe-go             | []             []                []           |
     gpe-login          |                []                             |
     gpe-ownerinfo      |                []             []              |
     gpe-package        | []             []                             |
     gpe-sketchbook     | []             []                             |
     gpe-su             | []    []       []             [] [] []        |
     gpe-taskmanager    | [] [] []       []             [] []           |
     gpe-timesheet      |                []             []              |
     gpe-today          |       []       []             [] []           |
     gpe-todo           |                []                   []        |
     gphoto2            |                                               |
     gprof              |                               []              |
     gpsdrive           |                                               |
     gramadoir          |                                               |
     grep               |                                               |
     grub               |                                               |
     gsasl              |                                               |
     gss                |                                               |
     gst-plugins-bad    |             [] []                [] []        |
     gst-plugins-base   |             [] []                             |
     gst-plugins-good   |                []                []           |
     gst-plugins-ugly   |             [] []             [] [] []        |
     gstreamer          |                                               |
     gtick              |                                               |
     gtkam              |                                     []        |
     gtkorphan          |                []                      []     |
     gtkspell           |       []    [] []       []    []    [] []     |
     gutenprint         |                                               |
     hello              | []             []             []              |
     help2man           |                                               |
     hylafax            |                                               |
     idutils            |                                               |
     indent             |                                               |
     iso_15924          |             [] []                             |
     iso_3166           | [] []       () [] [] []    []       []        |
     iso_3166_2         |                                               |
     iso_4217           |             []                      []        |
     iso_639            |                      []    []                 |
     iso_639_3          |                            []                 |
     jwhois             |                []                             |
     kbd                |                                               |
     keytouch           |                []                             |
     keytouch-editor    |                []                             |
     keytouch-keyboa... |                []                             |
     klavaro            |                                     []        |
     latrine            |                []                             |
     ld                 |                                               |
     leafpad            | []          [] []                             |
     libc               | []                                            |
     libexif            |                                               |
     libextractor       |                                               |
     libgnutls          |                               []              |
     libgpewidget       |                []             []              |
     libgpg-error       |                                               |
     libgphoto2         |                                               |
     libgphoto2_port    |                                               |
     libgsasl           |                                               |
     libiconv           |                                               |
     libidn             |                                               |
     lifelines          |                                               |
     liferea            |                                               |
     lilypond           |                                               |
     linkdr             |                                               |
     lordsawar          |                                               |
     lprng              |                                               |
     lynx               |                                               |
     m4                 |                                               |
     mailfromd          |                                               |
     mailutils          |                                               |
     make               | []                                            |
     man-db             |                                               |
     man-db-manpages    |                                               |
     minicom            |                                     []        |
     mkisofs            |                                               |
     myserver           |                                               |
     nano               |                               []    []        |
     opcodes            |                                               |
     parted             |                                               |
     pies               |                                               |
     popt               | []             []                   []        |
     psmisc             |                                               |
     pspp               |                                               |
     pwdutils           |                                               |
     radius             |                                               |
     recode             |                                               |
     rosegarden         |                                               |
     rpm                |                                               |
     rush               |                                               |
     sarg               |                                               |
     screem             |                                               |
     scrollkeeper       |                                     []     [] |
     sed                |                                               |
     sharutils          |                                               |
     shishi             |                                               |
     skencil            |                                               |
     solfege            |                                     []        |
     solfege-manual     |                                               |
     soundtracker       |                                               |
     sp                 |                                               |
     sysstat            |                []                             |
     tar                |       []                                      |
     texinfo            |                                     []        |
     tin                |                                               |
     unicode-han-tra... |                                               |
     unicode-transla... |                                               |
     util-linux-ng      |                                               |
     vice               |                                               |
     vmm                |                                               |
     vorbis-tools       |                                               |
     wastesedge         |                                               |
     wdiff              |                                               |
     wget               |             []                                |
     wyslij-po          |                                               |
     xchat              | []             [] []                          |
     xdg-user-dirs      | [] []       [] [] []       []       [] []     |
     xkeyboard-config   | []    []    []                                |
                        +-----------------------------------------------+
                          ko ku ky lg lt lv mk ml mn mr ms mt nb nds ne
                          20  5 10  1 13 48  4  2  2  4 24 10 20  3   1

                          nl  nn or pa pl  ps pt pt_BR ro ru rw sk sl sq sr
                        +---------------------------------------------------+
     a2ps               | []           []     []  []   [] []       []    [] |
     aegis              | []                      []      []                |
     ant-phone          |                         []   []                   |
     anubis             | []           []                 []                |
     aspell             | []                           [] []    [] []       |
     bash               | []                                    []          |
     bfd                |                                 []                |
     bibshelf           | []  []                                            |
     binutils           |                                 []    []          |
     bison              | []           []                 []                |
     bison-runtime      | []           []     []  []   [] []       []       |
     bluez-pin          | []           []         []   [] []    [] []    [] |
     bombono-dvd        |     []                          ()                |
     buzztard           | []  []                                            |
     cflow              |              []                                   |
     clisp              | []                              []                |
     coreutils          | []           []     []  []      []       []       |
     cpio               | []           []                 []                |
     cppi               |              []                                   |
     cpplib             | []                                                |
     cryptsetup         | []                                                |
     dfarc              |              []                                   |
     dialog             | []           []         []      []                |
     dico               |              []                                   |
     diffutils          | []           []         []   [] []             [] |
     dink               | ()                                                |
     doodle             | []                                          []    |
     e2fsprogs          | []           []                                   |
     enscript           | []                      []   [] []       []       |
     exif               | []           []              [] ()    []          |
     fetchmail          | []           []                 []          []    |
     findutils          | []           []     []          []       []       |
     flex               | []           []         []   [] []                |
     freedink           | []           []                                   |
     gas                |                                                   |
     gawk               | []           []         []   []                   |
     gcal               |                                                   |
     gcc                |                                                [] |
     gettext-examples   | []           []     []       [] []    [] []    [] |
     gettext-runtime    | []  []       []     []       [] []    [] []    [] |
     gettext-tools      |              []              [] []    [] []    [] |
     gip                | []           []                 []    []       [] |
     gjay               |                                                   |
     gliv               | []           []         []   [] []    []          |
     glunarclock        | []                      []   []       []       [] |
     gnubiff            | []                           ()                   |
     gnucash            | []           ()         ()      ()                |
     gnuedu             | []                                                |
     gnulib             | []           []                 []       []       |
     gnunet             |                                                   |
     gnunet-gtk         |                                                   |
     gnutls             | []           []                                   |
     gold               |                                                   |
     gpe-aerial         | []                  []  []   [] []       []    [] |
     gpe-beam           | []                  []  []   [] []       []    [] |
     gpe-bluetooth      | []                      []                        |
     gpe-calendar       |                         []      []       []    [] |
     gpe-clock          | []                  []  []   [] []    [] []    [] |
     gpe-conf           | []                  []  []   [] []    [] []       |
     gpe-contacts       |                         []   [] []       []    [] |
     gpe-edit           | []           []                          []       |
     gpe-filemanager    | []                              []       []       |
     gpe-go             | []           []         []   [] []    [] []    [] |
     gpe-login          | []                      []                        |
     gpe-ownerinfo      | []                  []  []   [] []    [] []    [] |
     gpe-package        | []                                       []       |
     gpe-sketchbook     | []                  []  []   [] []       []    [] |
     gpe-su             | []                  []  []   [] []    [] []    [] |
     gpe-taskmanager    | []                  []  []   [] []    [] []    [] |
     gpe-timesheet      | []                  []  []   [] []    [] []    [] |
     gpe-today          | []                  []  []   [] []    [] []    [] |
     gpe-todo           | []                      []      []       []    [] |
     gphoto2            | []        [] []         []   [] []    []       [] |
     gprof              | []                      []   []                   |
     gpsdrive           | []                              []                |
     gramadoir          | []                                    []          |
     grep               | []           []                 []    []          |
     grub               | []           []                 []                |
     gsasl              | []           []                       []       [] |
     gss                |              []              []       []          |
     gst-plugins-bad    | []           []         []      []    []    []    |
     gst-plugins-base   | []           []         []      []    []          |
     gst-plugins-good   | []           []         []      []    []          |
     gst-plugins-ugly   | []           []         []      []    [] []       |
     gstreamer          | []           []         []      []    []          |
     gtick              | []                              []    []          |
     gtkam              | []        [] []         []      []    []          |
     gtkorphan          | []                                                |
     gtkspell           | []           []     []  []   [] []    [] [] [] [] |
     gutenprint         | []                              []                |
     hello              | []           []                       [] []       |
     help2man           |              []                 []                |
     hylafax            | []                                                |
     idutils            | []           []         []   [] []                |
     indent             | []           []         []   [] []    []       [] |
     iso_15924          | []           []                 []       []       |
     iso_3166           | []  [] [] [] []     ()  []   [] [] [] [] [] [] [] |
     iso_3166_2         | []           []                          []       |
     iso_4217           | []  []       []     []          [] []    []    [] |
     iso_639            | []     [] [] []                 [] [] [] []    [] |
     iso_639_3          |        [] []                                      |
     jwhois             | []           []         []   []                   |
     kbd                | []           []              []                   |
     keytouch           | []           []                       []          |
     keytouch-editor    | []           []                       []          |
     keytouch-keyboa... | []           []                       []          |
     klavaro            | []                      []                        |
     latrine            |              []                 []                |
     ld                 |                                                   |
     leafpad            | []  []       []     []  []      []    [] []    [] |
     libc               | []           []                 []    []          |
     libexif            | []           []         ()            []          |
     libextractor       |                                                   |
     libgnutls          | []           []                                   |
     libgpewidget       | []           []                          []       |
     libgpg-error       |              []              []                   |
     libgphoto2         | []           []                                   |
     libgphoto2_port    | []           []         []      []    []          |
     libgsasl           | []           []              []       []       [] |
     libiconv           | []           []                       [] []    [] |
     libidn             | []           []                                   |
     lifelines          | []           []                                   |
     liferea            | []           []     []  []   [] ()    ()    []    |
     lilypond           | []                                                |
     linkdr             | []                  []          []                |
     lordsawar          |                                                   |
     lprng              |              []                                   |
     lynx               | []                      []      []                |
     m4                 | []           []         []   [] []                |
     mailfromd          |              []                                   |
     mailutils          |              []                                   |
     make               | []           []         []      []                |
     man-db             | []           []                 []                |
     man-db-manpages    | []           []                 []                |
     minicom            |              []         []   [] []                |
     mkisofs            | []           []                 []                |
     myserver           |                                                   |
     nano               | []           []         []      []                |
     opcodes            | []                           []                   |
     parted             | []           []                 []    []          |
     pies               |              []                                   |
     popt               | []           []     []          []                |
     psmisc             | []           []                 []                |
     pspp               | []                      []                        |
     pwdutils           |              []                                   |
     radius             | []           []                 []                |
     recode             | []           []     []  []   [] []    [] []       |
     rosegarden         |              ()                 ()                |
     rpm                | []           []     []                            |
     rush               | []           []                                   |
     sarg               |                                                   |
     screem             |                                                   |
     scrollkeeper       | []  []       []              [] []    []    [] [] |
     sed                | []           []     []  []   [] []    [] []    [] |
     sharutils          | []           []                 []             [] |
     shishi             |              []                                   |
     skencil            |                     []  []                        |
     solfege            | []           []         []      []                |
     solfege-manual     | []           []         []                        |
     soundtracker       |                                       []          |
     sp                 |                                                   |
     sysstat            | []           []         []      []                |
     tar                | []           []                 []       []       |
     texinfo            | []           []              [] []                |
     tin                |                                 []                |
     unicode-han-tra... |                                                   |
     unicode-transla... |                                                   |
     util-linux-ng      | []           []         []      []       []       |
     vice               | []                                                |
     vmm                | []                                                |
     vorbis-tools       | []           []                                   |
     wastesedge         | []                                                |
     wdiff              | []           []                                   |
     wget               | []           []     []  []      []    [] []       |
     wyslij-po          | []  []       []                                   |
     xchat              | []        [] []     []          []    [] [] [] [] |
     xdg-user-dirs      | []  [] [] [] []  [] []  []   [] []    [] [] [] [] |
     xkeyboard-config   | []           []                 []                |
                        +---------------------------------------------------+
                          nl  nn or pa pl  ps pt pt_BR ro ru rw sk sl sq sr
                          135 10  4  7 105  1 29  62   47 91  3 54 46  9 37

                          sv  sw ta te tg th tr uk vi  wa zh_CN zh_HK zh_TW
                        +---------------------------------------------------+
     a2ps               | []              [] [] [] []                       | 27
     aegis              |                          []                       |  9
     ant-phone          | []                 []    []      []               |  9
     anubis             | []                 [] [] []                       | 15
     aspell             |                       [] []  []                   | 20
     bash               | []                    [] []                       | 12
     bfd                |                          []                       |  6
     bibshelf           | []                       []      []               | 16
     binutils           |                       [] []                       |  8
     bison              | []                       []                       | 12
     bison-runtime      | []              []    [] []      []          []   | 29
     bluez-pin          | []              [] [] [] []  []  []          []   | 37
     bombono-dvd        |                          []                       |  4
     buzztard           |                          []                       |  7
     cflow              |                       [] []      []               |  9
     clisp              |                                                   | 10
     coreutils          | []                    [] []      []               | 22
     cpio               | []                 [] [] []      []          []   | 13
     cppi               |                       [] []                       |  5
     cpplib             | []                 [] [] []      []          []   | 14
     cryptsetup         | []                       []                       |  7
     dfarc              |                          []                       |  9
     dialog             | []  []          []       []  []  []          []   | 30
     dico               |                       []                          |  2
     diffutils          | []                 [] [] []      []          []   | 30
     dink               |                                                   |  4
     doodle             | []                       []                       |  7
     e2fsprogs          | []                 []    []                       | 11
     enscript           | []                 [] [] []                       | 17
     exif               | []                       []      []               | 16
     fetchmail          |                    []    []      []               | 17
     findutils          | []                 [] [] []      []               | 20
     flex               | []                 []    []                  []   | 15
     freedink           |                          []                       | 10
     gas                |                    []                             |  4
     gawk               | []                 []    []      []               | 18
     gcal               | []                 []                             |  5
     gcc                | []                 []            []               |  7
     gettext-examples   | []                 [] [] []      []    []    []   | 34
     gettext-runtime    | []                 [] [] []      []    []    []   | 29
     gettext-tools      | []                 [] [] []      []          []   | 22
     gip                | []                       []      []          []   | 22
     gjay               |                          []                       |  3
     gliv               | []                 []    []                       | 14
     glunarclock        | []                       []  []  []          []   | 19
     gnubiff            | []                       []                       |  4
     gnucash            |                    () [] ()      []          ()   | 10
     gnuedu             |                          []                  []   |  7
     gnulib             | []                    [] []      []               | 16
     gnunet             |                          []                       |  1
     gnunet-gtk         | []                 []    []                       |  5
     gnutls             | []                       []      []               | 10
     gold               |                          []                       |  4
     gpe-aerial         | []                       []      []               | 18
     gpe-beam           | []                       []      []               | 19
     gpe-bluetooth      | []                       []      []               | 13
     gpe-calendar       | []                       []  []  []               | 12
     gpe-clock          | []                 []    []  []  []               | 28
     gpe-conf           | []                       []  []  []               | 20
     gpe-contacts       | []                       []      []               | 17
     gpe-edit           | []                       []      []               | 12
     gpe-filemanager    | []                       []  []  []               | 16
     gpe-go             | []                 []    []  []  []               | 25
     gpe-login          | []                       []      []               | 11
     gpe-ownerinfo      | []                 []    []      []          []   | 25
     gpe-package        | []                       []      []               | 13
     gpe-sketchbook     | []                       []      []               | 20
     gpe-su             | []                 []    []  []  []               | 30
     gpe-taskmanager    | []                 []    []  []  []               | 29
     gpe-timesheet      | []                 []    []      []          []   | 25
     gpe-today          | []                 []    []  []  []          []   | 30
     gpe-todo           | []                       []  []  []               | 17
     gphoto2            | []                    [] []      []          []   | 24
     gprof              | []                 []    []                       | 15
     gpsdrive           | []                       []      []               | 11
     gramadoir          | []                       []      []               | 11
     grep               |                 []       []      []               | 10
     grub               | []                       []      []               | 14
     gsasl              | []                       []      []          []   | 14
     gss                | []                       []      []               | 11
     gst-plugins-bad    | []                 []    []      []               | 26
     gst-plugins-base   | []                 [] [] []      []               | 24
     gst-plugins-good   | []                 []    []      []               | 24
     gst-plugins-ugly   | []                 [] [] []      []               | 29
     gstreamer          | []                    [] []      []               | 22
     gtick              |                       [] []      []               | 13
     gtkam              | []                       []      []               | 20
     gtkorphan          | []                       []      []               | 14
     gtkspell           | []              [] [] [] []  []  []    []    []   | 45
     gutenprint         | []                                                | 10
     hello              | []              [] []    []      []          []   | 21
     help2man           | []                       []                       |  7
     hylafax            |                          []                       |  5
     idutils            | []                 []    []      []               | 17
     indent             | []                 [] [] []      []          []   | 30
     iso_15924          |                 ()    [] ()      []          []   | 16
     iso_3166           | []        []    () [] [] ()  []  []    []    ()   | 53
     iso_3166_2         |                 ()    [] ()      []               |  9
     iso_4217           | []              () [] [] ()      []    []         | 26
     iso_639            | []     [] []    ()    [] ()  []  []    []    []   | 38
     iso_639_3          |        []                ()                       |  8
     jwhois             | []                 []    []      []          []   | 16
     kbd                | []                 [] [] []      []               | 15
     keytouch           | []                       []      []               | 16
     keytouch-editor    | []                       []      []               | 14
     keytouch-keyboa... | []                       []      []               | 14
     klavaro            |                          []                       | 11
     latrine            |                    []    []      []               | 10
     ld                 | []                 []    []                  []   | 11
     leafpad            | []                 [] [] []      []          []   | 33
     libc               | []                 []    []      []          []   | 21
     libexif            |                          []      ()               |  7
     libextractor       |                          []                       |  1
     libgnutls          | []                       []      []               |  9
     libgpewidget       | []                       []      []               | 14
     libgpg-error       | []                       []      []               |  9
     libgphoto2         |                       [] []                       |  8
     libgphoto2_port    | []                    [] []                  []   | 14
     libgsasl           | []                       []      []               | 13
     libiconv           | []                       []  []  []               | 21
     libidn             | ()                       []      []               | 11
     lifelines          | []                                                |  4
     liferea            | []                 []            []               | 21
     lilypond           |                          []                       |  7
     linkdr             | []                 []    []      []          []   | 17
     lordsawar          |                                                   |  1
     lprng              |                          []                       |  3
     lynx               | []                 [] [] []                       | 17
     m4                 | []                       []      []          []   | 19
     mailfromd          |                       [] []                       |  3
     mailutils          |                          []                       |  5
     make               | []                 []    []      []               | 21
     man-db             | []                       []      []               |  8
     man-db-manpages    |                                                   |  4
     minicom            | []                       []                       | 16
     mkisofs            |                          []      []               |  9
     myserver           |                                                   |  0
     nano               | []                       []      []          []   | 21
     opcodes            | []                 []    []                       | 11
     parted             | []                 [] [] []                  []   | 15
     pies               |                       [] []                       |  3
     popt               | []              [] []    []      []          []   | 27
     psmisc             | []                       []                       | 11
     pspp               |                                                   |  4
     pwdutils           | []                       []                       |  6
     radius             |                       [] []                       |  9
     recode             | []                 []    []      []               | 28
     rosegarden         | ()                                                |  0
     rpm                | []                       []                  []   | 11
     rush               |                       [] []                       |  4
     sarg               |                                                   |  1
     screem             |                          []                       |  3
     scrollkeeper       | []                 [] [] []                  []   | 27
     sed                | []                 []    []      []          []   | 30
     sharutils          | []                 []    []      []          []   | 22
     shishi             |                          []                       |  3
     skencil            | []                       []                       |  7
     solfege            | []                 []    []      []               | 16
     solfege-manual     |                    []                             |  8
     soundtracker       | []                 []    []                       |  9
     sp                 |                    []                             |  3
     sysstat            |                          []      []               | 15
     tar                | []                 [] [] []      []          []   | 23
     texinfo            | []                 [] [] []      []               | 17
     tin                |                                                   |  4
     unicode-han-tra... |                                                   |  0
     unicode-transla... |                                                   |  2
     util-linux-ng      | []                 [] [] []                       | 20
     vice               | ()                 ()                             |  1
     vmm                |                          []                       |  4
     vorbis-tools       |                          []                       |  6
     wastesedge         |                                                   |  2
     wdiff              | []                       []                       |  7
     wget               | []                 []    []      []          []   | 26
     wyslij-po          |                       [] []                       |  8
     xchat              | []              []    [] []      []          []   | 36
     xdg-user-dirs      | []     [] []    [] [] [] []      []    []    []   | 63
     xkeyboard-config   | []                    [] []                       | 22
                        +---------------------------------------------------+
       85 teams           sv  sw ta te tg th tr uk vi  wa zh_CN zh_HK zh_TW
      178 domains         119  1  3  3  0 10 65 51 155 17  98     7    41    2618

Some counters in the preceding matrix are higher than the number of
visible blocks let us expect. This is because a few extra PO files are
used for implementing regional variants of languages, or language
dialects.

For a PO file in the matrix above to be effective, the package to
which it applies should also have been internationalized and
distributed as such by its maintainer. There might be an observable
lag between the mere existence a PO file and its wide availability in a
distribution.

If June 2010 seems to be old, you may fetch a more recent copy of
this `ABOUT-NLS` file on most GNU archive sites. The most up-to-date
matrix with full percentage details can be found at
`http://translationproject.org/extra/matrix.html`.

## 1.5 Using `gettext` in new packages

If you are writing a freely available program and want to
internationalize it you are welcome to use GNU `gettext` in your
package. Of course you have to respect the GNU Library General Public
License which covers the use of the GNU `gettext` library. This means
in particular that even non-free programs can use `libintl` as a shared
library, whereas only free software can use `libintl` as a static
library or use modified versions of `libintl`.

Once the sources are changed appropriately and the setup can handle
the use of `gettext` the only thing missing are the translations. The
Free Translation Project is also available for packages which are not
developed inside the GNU project. Therefore the information given above
applies also for every other Free Software Project. Contact
`coordinator@translationproject.org` to make the `.pot` files available
to the translation teams.