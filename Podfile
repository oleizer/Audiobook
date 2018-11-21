platform :ios, '11.0'

def unit_test_libs
    pod 'Quick'
    pod 'QuickSwiftCheck'
    pod 'Nimble'
end


target 'Audiobook' do
  use_frameworks!

  target 'AudiobookTests' do
    inherit! :search_paths
    unit_test_libs
  end
end
