#############################################################################
##
#W  PackageInfo.g
#Y  Copyright (C) 2011-12                                James D. Mitchell
##
##  Licensing information can be found in the README file of this package.
##
#############################################################################
##

##  <#GAPDoc Label="PKGVERSIONDATA">
##  <!ENTITY VERSION "0.5">
##  <!ENTITY ORBVERS "3.8">
##  <!ENTITY RELEASEDATE "10 January 2012">
##  <!ENTITY ARCHIVENAME "citrus-0.5">
##  <!ENTITY COPYRIGHTYEARS "2011-12">
##  <#/GAPDoc>

SetPackageInfo( rec(
PackageName := "Citrus",
Subtitle := "ComputIng with Transformation semigRoUps and monoidS",
Version := "0.5",
Date := "10/01/2012",
ArchiveURL := 
          "https://bitbucket.org/zen154115/citrus/downloads/citrus-0.5",
ArchiveFormats := ".tar.gz",
Persons := [
  rec( 
    LastName      := "Mitchell",
    FirstNames    := "J. D.",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "jdm3@st-and.ac.uk",
    WWWHome       := "http://tinyurl.com/jdmitchell",
    PostalAddress := Concatenation( [
                       "Mathematical Institute,",
                       " North Haugh,", " St Andrews,", " Fife,", " KY16 9SS,", 
                       " Scotland"] ),
    Place         := "St Andrews",
    Institution   := "University of St Andrews"
  )],
Status := "deposited",

README_URL := 
  "http://www-groups.mcs.st-and.ac.uk/~jamesm/citrus/README",
PackageInfoURL := 
  "http://www-groups.mcs.st-and.ac.uk/~jamesm/citrus/PackageInfo.g",

AbstractHTML := Concatenation( 
  "The <span class=\"pkgname\">Citrus</span> package, is a ",
  "<span class=\"pkgname\">GAP</span>  package  for transformation", 
  "monoids and related objects."),

PackageWWWHome := "http://www-groups.mcs.st-and.ac.uk/~jamesm/citrus",
               
PackageDoc := rec(
  BookName  := "Citrus",
  Archive := 
      "http://www-groups.mcs.st-and.ac.uk/~jamesm/citrus/citrus-0.5.tar.gz",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",  
  SixFile   := "doc/manual.six",
  LongTitle := "Citrus - ComputIng with TransfoRmation semigrUopS",
  Autoload  := true
),

Dependencies := rec(
  GAP := ">=4.5",
  NeededOtherPackages := [["orb", ">=3.8"], ["io", ">=3.3"]],
  SuggestedOtherPackages := [["gapdoc", ">=1.4"]], 
  ExternalConditions := []),
  AvailabilityTest := ReturnTrue,
  Autoload := false,
  TestFile := "tst/testinstall.tst",
  Keywords := ["transformation semigroups", "green's relations"]
));
