package Catalyst::Action::Serialize::Plist;
use parent 'Catalyst::Action';
use Data::Plist::XMLWriter;

sub execute {
    my ($self, $controller, $c) = @_;
    $c->res->content_type('text/plist');
    $c->res->output(Data::Plist::XMLWriter->new->write($c->stash->{$controller->config->{'stash_key'} || 'rest' }));
}

1;
