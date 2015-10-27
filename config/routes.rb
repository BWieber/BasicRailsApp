Rails.application.routes.draw do
 get 'welcome/index'

 get 'welcome/about'

 get 'welcome/social'

 root to: 'welcome#index'

end
