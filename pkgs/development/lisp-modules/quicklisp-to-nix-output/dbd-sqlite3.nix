args @ { fetchurl, ... }:
rec {
  baseName = ''dbd-sqlite3'';
  version = ''cl-dbi-20180131-git'';

  description = ''Database driver for SQLite3.'';

  deps = [ args."alexandria" args."babel" args."bordeaux-threads" args."cffi" args."cl-annot" args."cl-syntax" args."cl-syntax-annot" args."closer-mop" args."dbi" args."iterate" args."named-readtables" args."split-sequence" args."sqlite" args."trivial-features" args."trivial-types" args."uiop" ];

  src = fetchurl {
    url = ''http://beta.quicklisp.org/archive/cl-dbi/2018-01-31/cl-dbi-20180131-git.tgz'';
    sha256 = ''0hz5na9aqfi3z78yhzz4dhf2zy3h0v639w41w8b1adffyqqf1vhn'';
  };

  packageName = "dbd-sqlite3";

  asdFilesToKeep = ["dbd-sqlite3.asd"];
  overrides = x: x;
}
/* (SYSTEM dbd-sqlite3 DESCRIPTION Database driver for SQLite3. SHA256
    0hz5na9aqfi3z78yhzz4dhf2zy3h0v639w41w8b1adffyqqf1vhn URL
    http://beta.quicklisp.org/archive/cl-dbi/2018-01-31/cl-dbi-20180131-git.tgz
    MD5 7dacf1c276fab38b952813795ff1f707 NAME dbd-sqlite3 FILENAME dbd-sqlite3
    DEPS
    ((NAME alexandria FILENAME alexandria) (NAME babel FILENAME babel)
     (NAME bordeaux-threads FILENAME bordeaux-threads)
     (NAME cffi FILENAME cffi) (NAME cl-annot FILENAME cl-annot)
     (NAME cl-syntax FILENAME cl-syntax)
     (NAME cl-syntax-annot FILENAME cl-syntax-annot)
     (NAME closer-mop FILENAME closer-mop) (NAME dbi FILENAME dbi)
     (NAME iterate FILENAME iterate)
     (NAME named-readtables FILENAME named-readtables)
     (NAME split-sequence FILENAME split-sequence)
     (NAME sqlite FILENAME sqlite)
     (NAME trivial-features FILENAME trivial-features)
     (NAME trivial-types FILENAME trivial-types) (NAME uiop FILENAME uiop))
    DEPENDENCIES
    (alexandria babel bordeaux-threads cffi cl-annot cl-syntax cl-syntax-annot
     closer-mop dbi iterate named-readtables split-sequence sqlite
     trivial-features trivial-types uiop)
    VERSION cl-dbi-20180131-git SIBLINGS
    (cl-dbi dbd-mysql dbd-postgres dbi-test dbi) PARASITES NIL) */
