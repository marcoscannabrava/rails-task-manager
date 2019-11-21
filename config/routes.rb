Rails.application.routes.draw do
  root                     to: 'tasks#list'
  get    'tasks',          to: 'tasks#list'
  get    'tasks/new',      to: 'tasks#add'
  post   'tasks',          to: 'tasks#create'
  # NB: The `show` route needs to be *after* `new` route.
  get    'tasks/:id',      to: 'tasks#edit', as: :task
  patch  'tasks/:id',      to: 'tasks#update'
  delete 'tasks/:id',      to: 'tasks#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
