#
# Be sure to run `pod lib lint liboggz.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'liboggz'
  s.version          = '0.1.0'
  s.summary          = 'A short description of liboggz.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/nagham/liboggz'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nagham' => 'nagham.nader@lyth.de' }
  s.source           = { :git => 'https://github.com/nagham/liboggz.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'liboggz/Classes/*'
  
  # s.resource_bundles = {
  #   'liboggz' => ['liboggz/Assets/*.png']
  # }
  s.prepare_command = <<-'CMD'
  echo '#define HAVE_DLFCN_H 1' > config.h
  echo '#define HAVE_FCNTL_H 1' >> config.h
  echo '#define HAVE_GETOPT_LONG /**/' >> config.h
  echo '#define HAVE_INTTYPES_H 1' >> config.h
  echo '#define HAVE_MEMMOVE 1' >> config.h
  echo '#define HAVE_MEMORY_H 1' >> config.h
  echo '#define HAVE_SSIZE_T 1' >> config.h
  echo '#define HAVE_STDINT_H 1' >> config.h
  echo '#define HAVE_STDLIB_H 1' >> config.h
  echo '#define HAVE_STRINGS_H 1' >> config.h
  echo '#define HAVE_STRING_H 1' >> config.h
  echo '#define HAVE_SYS_STAT_H 1' >> config.h
  echo '#define HAVE_SYS_TYPES_H 1' >> config.h
  echo '#define HAVE_UNISTD_H 1' >> config.h
  echo '#define LT_OBJDIR ".libs/"' >> config.h
  echo '#define OGGZ_CONFIG_READ 1' >> config.h
  echo '#define OGGZ_CONFIG_WRITE 1' >> config.h
  echo '#define OGGZ_OFF_MAX 0x7FFFFFFFFFFFFFFFLL' >> config.h
  echo '#define PACKAGE "liboggz"' >> config.h
  echo '#define PACKAGE_BUGREPORT ""' >> config.h
  echo '#define PACKAGE_NAME ""' >> config.h
  echo '#define PACKAGE_STRING ""' >> config.h
  echo '#define PACKAGE_TARNAME ""' >> config.h
  echo '#define PACKAGE_URL ""' >> config.h
  echo '#define PACKAGE_VERSION ""' >> config.h
  echo '#define SIZEOF_OFF_T 8' >> config.h
  echo '#define SIZEOF_OGGZ_OFF_T 8' >> config.h
  echo '#define SIZEOF_SSIZE_T 8' >> config.h
  echo '#define STDC_HEADERS 1' >> config.h
  echo '#define VERSION "1.1.1"' >> config.h
  
  echo '#ifndef __OGGZ_OFF_T_GENERATED_H__' > include/oggz/oggz_off_t_generated.h
  echo '#define __OGGZ_OFF_T_GENERATED_H__' >> include/oggz/oggz_off_t_generated.h
  echo '#include <sys/types.h>' >> include/oggz/oggz_off_t_generated.h
  echo 'typedef off_t oggz_off_t;' >> include/oggz/oggz_off_t_generated.h
  echo '#define PRI_OGGZ_OFF_T "ll"' >> include/oggz/oggz_off_t_generated.h
  echo '#endif /* __OGGZ_OFF_T_GENERATED__ */' >> include/oggz/oggz_off_t_generated.h
  
  echo 'framework module oggz {' > oggz.modulemap
  echo '  umbrella header "oggz.h"' >> oggz.modulemap
  echo '  module oggz {' >> oggz.modulemap
  echo '    header "oggz.h"' >> oggz.modulemap
  echo '    export *' >> oggz.modulemap
  echo '  }' >> oggz.modulemap
  echo '}' >> oggz.modulemap
  CMD

   s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
