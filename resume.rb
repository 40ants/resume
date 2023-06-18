class Resume < Formula
  desc "A datadriven resume builder for people who are looking for a new job."
  homepage "https://github.com/40ants/resume"
  url "https://github.com/40ants/resume/archive/v0.1.7.tar.gz"
  sha256 "c12a564169ee270546f8ebbbaab0fee4d0f199c364a6682d6f7fddaae2b21d34"
  head NIL

  depends_on "sbcl"

  resource "40ants-cl-info" do
    url "http://dist.ultralisp.org/archive/2/40ants-cl-info-20220801102516.tgz"
    sha256 "fe049b3bbfd5185c837fd7c4eb8a8339cc5577ef9823dc0bc3c2926814e7775d"
  end

  resource "40ants-defmain" do
    url "http://dist.ultralisp.org/archive/1/40ants-defmain-20220822153158.tgz"
    sha256 "adc951876a345a547182c4a9896a5d8f875ee8ceb7274237616b1b36cba95eca"
  end

  resource "40ants-doc" do
    url "http://dist.ultralisp.org/archive/1645/40ants-doc-20230605104729.tgz"
    sha256 "3d95b84d9fb1c5094b7fe403ed6ae4e624ef78d9844a8f76bd8d23e11dfae9ea"
  end

  resource "40ants-docs-builder" do
    url "http://dist.ultralisp.org/archive/1663/40ants-docs-builder-20230605085325.tgz"
    sha256 "589ee2dbfe7371bdb3391fcf1763720e77ac8c3a6666a6a5eb86743083448211"
  end

  resource "alexandria" do
    url "http://beta.quicklisp.org/archive/alexandria/2022-07-07/alexandria-20220707-git.tgz"
    sha256 "8e6173120de8786c7ae0fefba8102d82620fac42e9aade954af9135e0870d6b1"
  end

  resource "anaphora" do
    url "http://beta.quicklisp.org/archive/anaphora/2022-02-20/anaphora-20220220-git.tgz"
    sha256 "f7114f9ea2f323f3c968e87c02930a4dac4d43b23069c1a7c5672929aa214e4a"
  end

  resource "asdf-system-connections" do
    url "http://beta.quicklisp.org/archive/asdf-system-connections/2017-01-24/asdf-system-connections-20170124-git.tgz"
    sha256 "f8723e0b0b8bd5f964f7726536e52aacb2e9833d475fcde8333cda81d7190241"
  end

  resource "Bike-introspect-environment" do
    url "http://dist.ultralisp.org/archive/657/Bike-introspect-environment-20220112231743.tgz"
    sha256 "8371897da44f24f8a23aee4deecc7a8b2751ecaee671069fe0faee5e2cae0b77"
  end

  resource "cbaggers-trivial-macroexpand-all" do
    url "http://dist.ultralisp.org/ultralisp/archive/c/cbaggers-trivial-macroexpand-all-20190319050303.tgz"
    sha256 "636261be2d9ec578300a866fb1b49055e11a249a2d02b8b76eeb52f9444cb0d9"
  end

  resource "cffi" do
    url "http://beta.quicklisp.org/archive/cffi/2023-02-14/cffi-20230214-git.tgz"
    sha256 "cffcb66a21a0d126c6f7f835f151b86176d57b70e2d16ec2e546ba3ac74b39cd"
  end

  resource "cl-babel-babel" do
    url "http://dist.ultralisp.org/archive/1237/cl-babel-babel-20230131043757.tgz"
    sha256 "cd3c1154be061834514a41ccc826735edfdf376ea9124e338f54209861a8a1b1"
  end

  resource "cl-base64" do
    url "http://beta.quicklisp.org/archive/cl-base64/2020-10-16/cl-base64-20201016-git.tgz"
    sha256 "3ff50faf5ddccd409f8954eb70c2d4e76329cc916f070de95f79c7ecf6d3a2f1"
  end

  resource "cl-containers" do
    url "http://beta.quicklisp.org/archive/cl-containers/2023-02-14/cl-containers-20230214-git.tgz"
    sha256 "d0c1bffc5f9d47ca10ef311234e044ebba8c9abb82e0430f02f290ba4b00ef2d"
  end

  resource "cl-inflector" do
    url "http://beta.quicklisp.org/archive/cl-inflector/2015-01-13/cl-inflector-20150113-git.tgz"
    sha256 "4cc99b1bbc9f334f736bfcf65864f80d863aed68c09245d88f3e21c9cc66a66e"
  end

  resource "cl-markdown" do
    url "http://beta.quicklisp.org/archive/cl-markdown/2019-12-27/cl-markdown-20191227-git.tgz"
    sha256 "0d7187af7f42e8fb134d488e58050f865138d59c0aeeff5a2db825b5c1723b2d"
  end

  resource "didierverna-clon" do
    url "http://dist.ultralisp.org/archive/1665/didierverna-clon-20220703135002.tgz"
    sha256 "ebf34c52d78288c384d0eaffe4139879dc857282bfdae763c13e6dcce0de5737"
  end

  resource "diogoalexandrefranco-cl-strings" do
    url "http://dist.ultralisp.org/archive/1031/diogoalexandrefranco-cl-strings-20210309201001.tgz"
    sha256 "7f5d051d2e443f285cf637015a0a7e4839974ddf78c48732cb9524a249d6ef4a"
  end

  resource "edicl-cl-ppcre" do
    url "http://dist.ultralisp.org/archive/1239/edicl-cl-ppcre-20230614075200.tgz"
    sha256 "fcf1d505007aa0fce3d09752c5fd1459efbaae43fb80f06980e591c7ec393918"
  end

  resource "eudoxia0-lass-flexbox" do
    url "http://dist.ultralisp.org/archive/634/eudoxia0-lass-flexbox-20210914223537.tgz"
    sha256 "a2511fd0d18f1e3259314eb2938a87194a36d5d2738e72f8f86d28542f8610c4"
  end

  resource "guicho271828-lisp-namespace" do
    url "http://dist.ultralisp.org/archive/602/guicho271828-lisp-namespace-20220727072541.tgz"
    sha256 "0770da5d1c5fe0cf64cfbe6863aa13d9af65fcf92f0f491f911087abc66981f4"
  end

  resource "guicho271828-trivia" do
    url "http://dist.ultralisp.org/archive/215/guicho271828-trivia-20230307013854.tgz"
    sha256 "9427effaaf2457ede83cc6dd230dcdec5a65a4962aca3bdcb0ea75513a069a14"
  end

  resource "guicho271828-type-i" do
    url "http://dist.ultralisp.org/archive/154/guicho271828-type-i-20230131054045.tgz"
    sha256 "b3e878a3c062dbce3ca38586c4d0f4c71634563c2e2bcd33f7b4d7b32aed858b"
  end

  resource "gwkkwg-dynamic-classes" do
    url "http://dist.ultralisp.org/ultralisp/archive/g/gwkkwg-dynamic-classes-20190319092618.tgz"
    sha256 "b48033747c62efe63c9a01bb0edd73915ce5ed505164854957fdc6635ffeb079"
  end

  resource "gwkkwg-metabang-bind" do
    url "http://dist.ultralisp.org/archive/557/gwkkwg-metabang-bind-20230510163738.tgz"
    sha256 "846dc8bb9e6a833ab70a7ca73e98e580c9a50569e2318b82c73ed39e98fe46a0"
  end

  resource "gwkkwg-metatilities-base" do
    url "http://dist.ultralisp.org/ultralisp/archive/g/gwkkwg-metatilities-base-20191224133121.tgz"
    sha256 "a3cf2f15a4b66bdc5fb7b550ebdf61ee962434dddaef434b6daaad82019eb0c5"
  end

  resource "iterate" do
    url "http://beta.quicklisp.org/archive/iterate/2021-05-31/iterate-release-b0f9a9c6-git.tgz"
    sha256 "9311c658a3950f7d5dd5d5aa4cebfe04f24b735c0560941be4b29f87550413bb"
  end

  resource "lmj-global-vars" do
    url "http://dist.ultralisp.org/ultralisp/archive/l/lmj-global-vars-20190319075150.tgz"
    sha256 "b8a52b9ef2152f4087c1bf1ea9ea29f137419aa81d6ce4e250af2c34b169168d"
  end

  resource "melisgl-named-readtables" do
    url "http://dist.ultralisp.org/archive/507/melisgl-named-readtables-20230503191744.tgz"
    sha256 "82fd79400a59392dc5caaa1bebfdc5884f70363f35120694c65eb120259b81de"
  end

  resource "parenscript" do
    url "http://beta.quicklisp.org/archive/parenscript/2018-12-10/Parenscript-2.7.1.tgz"
    sha256 "ce505ac99de0224a2a750d15740f04514956d2597938303ddec8df24bf6c74ed"
  end

  resource "parse-declarations" do
    url "http://beta.quicklisp.org/archive/parse-declarations/2010-10-06/parse-declarations-20101006-darcs.tgz"
    sha256 "2d73e5edc275182f3f327ed5db428b2692de466089cf62f244a231e524580565"
  end

  resource "pcostanza-closer-mop" do
    url "http://dist.ultralisp.org/archive/952/pcostanza-closer-mop-20230531103636.tgz"
    sha256 "c057e237b5afee130122733194c73fb4c8d4bc86764059484e2300f56ad8b63c"
  end

  resource "pkhuong-string-case" do
    url "http://dist.ultralisp.org/ultralisp/archive/p/pkhuong-string-case-20190319065039.tgz"
    sha256 "b0c557548d755768b0acd13e21f15a210c3fd497bf36fa06bfd651dddfebe9d1"
  end

  resource "ruricolist-serapeum" do
    url "http://dist.ultralisp.org/archive/319/ruricolist-serapeum-20230613203226.tgz"
    sha256 "3bf18aa69f75cf2ce2b5472550d64a933e75a67e7a46576b0f50c5687f06babf"
  end

  resource "ruricolist-spinneret" do
    url "http://dist.ultralisp.org/archive/45/ruricolist-spinneret-20230617111804.tgz"
    sha256 "e6dd0e2a49cf62a5b2c167ebbcd5f320c61834991bc69e553f502678f8a9afa9"
  end

  resource "ruricolist-trivial-file-size" do
    url "http://dist.ultralisp.org/archive/196/ruricolist-trivial-file-size-20220720094728.tgz"
    sha256 "ab653f043843527b1d33dc12c6eddcdec4d69b35f3ce2a964098db2d1d81027d"
  end

  resource "sharplispers-parse-number" do
    url "http://dist.ultralisp.org/archive/462/sharplispers-parse-number-20211205080138.tgz"
    sha256 "ff51050bd42ab05bfed048fbd86ca62fc1edd6e55433dbb15791c9ac366be5e2"
  end

  resource "sharplispers-split-sequence" do
    url "http://dist.ultralisp.org/archive/273/sharplispers-split-sequence-20211208061629.tgz"
    sha256 "98c27530444a65fcdc71f2dc539a252efa977f1a2ebfd6a0453ddfa572ca1d83"
  end

  resource "Shinmera-deploy" do
    url "http://dist.ultralisp.org/archive/858/Shinmera-deploy-20230614113440.tgz"
    sha256 "c44a274d01c2f0c34369b4576bf33c500e3024f749eae7ac14b6deef4b12a43f"
  end

  resource "Shinmera-documentation-utils" do
    url "http://dist.ultralisp.org/ultralisp/archive/S/Shinmera-documentation-utils-20190627101653.tgz"
    sha256 "f2a238459c2a91032af093487e8237b38c321eae2c656c23558b711f6bc90815"
  end

  resource "Shinmera-LASS" do
    url "http://dist.ultralisp.org/archive/633/Shinmera-LASS-20221212225322.tgz"
    sha256 "f309174bb7000bb0f3b2ee180e6409706f8e971eb64b02366b5d15934ecc9278"
  end

  resource "Shinmera-trivial-indent" do
    url "http://dist.ultralisp.org/archive/193/Shinmera-trivial-indent-20230221065556.tgz"
    sha256 "5e66aa163143828c8b2a89bb0bb4f4c00003e7a09b9a291c86eeb9a4c2b957c4"
  end

  resource "Shinmera-trivial-mimes" do
    url "http://dist.ultralisp.org/archive/184/Shinmera-trivial-mimes-20221212231643.tgz"
    sha256 "c8632ae7d039cbfe4b285b3e4ca280f178fabdec3d406b40d71ddeddf7469e61"
  end

  resource "sionescu-bordeaux-threads" do
    url "http://dist.ultralisp.org/archive/1238/sionescu-bordeaux-threads-20230604143150.tgz"
    sha256 "388625b5f352f5099bffa548569582c6eeb751e0293b4e861c3e534643d43587"
  end

  resource "smithzvk-pythonic-string-reader" do
    url "http://dist.ultralisp.org/ultralisp/archive/s/smithzvk-pythonic-string-reader-20190319061032.tgz"
    sha256 "e07685f67f19e4ddb1359120032fbd32aec2808892c64e34669063f5414136fe"
  end

  resource "trivial-features-trivial-features" do
    url "http://dist.ultralisp.org/archive/197/trivial-features-trivial-features-20230614074348.tgz"
    sha256 "6dab2a6ee703a8d444d3e0438afc838138a8943c4ae1640cc5d710dabba35b34"
  end

  resource "trivial-garbage-trivial-garbage" do
    url "http://dist.ultralisp.org/archive/195/trivial-garbage-trivial-garbage-20211229223228.tgz"
    sha256 "d828515970e9d6e70f6307dbd3a7da67b523e5c76be3473c65ad1bdf48eaaee7"
  end

  resource "trivial-gray-streams-trivial-gray-streams" do
    url "http://dist.ultralisp.org/archive/194/trivial-gray-streams-trivial-gray-streams-20210118211457.tgz"
    sha256 "5f9e8264e4bae7febcb11237d117a50fa061ea46535570475e9df0da5532db47"
  end

  resource "uiop" do
    url "http://beta.quicklisp.org/archive/uiop/2022-11-06/uiop-3.3.6.tgz"
    sha256 "302acb92b985b4b44a2ae2bdcc0d385084138c17acaf2cdc7ed2dc155172ec70"
  end

  resource "Zulu-Inuoe-trivial-cltl2" do
    url "http://dist.ultralisp.org/archive/206/Zulu-Inuoe-trivial-cltl2-20211222224006.tgz"
    sha256 "6bf297fcc7bc9af7d82717c7f1d7e02c10b24f449168a36dda1373c5260f7e6c"
  end

  def install
    resources.each do |resource|
      resource.stage buildpath/"lib"/resource.name
    end

    ENV["CL_SOURCE_REGISTRY"] = "#{buildpath}/lib//:#{buildpath}//"
    ENV["ASDF_OUTPUT_TRANSLATIONS"] = "/:/"

    system "sbcl", "--eval", "(require :asdf)", "--eval", "(asdf:load-system :deploy)", "--eval", "(handler-case (progn (setf deploy:*status-output* nil) (asdf:make :resume)) (error () (uiop:quit 1)))"
    bin.install Dir["bin/*"]
  end
end
