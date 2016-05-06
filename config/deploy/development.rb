set :stage, :development
role :app, %w{root@$160.16.203.6
role :web, %w{root@$160.16.203.6
role :db, %w{root@$160.16.203.6

server '$160.16.203.6',
user: 'root',
roles: %w{web app db},
ssh_options: {
 auth_methods: %w(si6anchu),
 password: 'si6anchu'
}