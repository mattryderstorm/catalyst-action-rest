package Catalyst::Action::Serialize::Plist::Binary;
use parent 'Catalyst::Action';
use Data::Plist::BinaryWriter;

sub execute {
    my ($self, $controller, $c) = @_;
    $c->res->content_type('application/x-plist');
    $c->res->output(Data::Plist::BinaryWriter->new->write($c->stash->{$controller->config->{'stash_key'} || 'rest' }));
}

1;
