Rails.application.routes.draw do
  resources :sections do
    resources :subsections, :only => [] do
      resources :lessons
    end
  end
end
