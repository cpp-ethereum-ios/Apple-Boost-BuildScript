Pod::Spec.new do |spec|
  spec.name = "Apple-Boost"
  spec.summary = "Boost C++ Libraries"
  spec.homepage = 'https://github.com/markspanbroek/Apple-Boost-BuildScript'
  spec.authors = "Boost Authors"
  spec.license = "Boost License"

  spec.version = "1.61.0.0"

  spec.source = {
    git: 'https://github.com/markspanbroek/Apple-Boost-BuildScript.git',
    tag: "v#{spec.version}"
  }

  spec.ios.deployment_target = '8.0'
  spec.osx.deployment_target = '10.10'
  spec.tvos.deployment_target = '9.2'

  spec.prepare_command = './boost.sh'

  spec.ios.vendored_frameworks = "build/boost/#{spec.version}/ios/framework/boost.framework"
  spec.osx.vendored_frameworks = "build/boost/#{spec.version}/osx/framework/boost.framework"
  spec.tvos.vendored_frameworks = "build/boost/#{spec.version}/tvos/framework/boost.framework"
end
