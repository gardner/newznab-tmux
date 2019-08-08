{if $loggedin == "true"}
	{if $smarty.server.REQUEST_URI == "/"}
		{foreach from=$content item=c}
			{$c->body}
		{/foreach}
	{else}
		{foreach from=$content item=c}
			<div class="header">
				<h2>Help > <strong>{$c->title}</strong></h2>
				<div class="breadcrumb-wrapper">
					<ol class="breadcrumb">
						<li><a href="{{url("{$site->home_link}")}}">Home</a></li>
						/ {$c->title}
					</ol>
				</div>
			</div>
			{$c->body}
		{/foreach}
	{/if}
{else}
	{foreach from=$content item=c}
		{if $c->role == 0}
			<div class="header">
				<h2>Help > <strong>{$c->title}</strong></h2>
				<div class="breadcrumb-wrapper">
					<ol class="breadcrumb">
						<li><a href="{{url("{$site->home_link}")}}">Home</a></li>
						/ {$c->title}
					</ol>
				</div>
			</div>
			{$c->body}
		{/if}
	{/foreach}
{/if}
