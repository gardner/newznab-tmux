<div class="well well-sm">
	<h1>{$title}</h1>
	<a class="btn btn-success" href="{$smarty.const.WWW_TOP}/admin/posters-list"><i class="fa fa-arrow-left"></i> Go
		back</a>
	<form action="posters-edit?action=submit" method="POST">
		{{csrf_field()}}
		<table class="input data table table-striped responsive-utilities jambo-table">
			<tr>
				<td>Poster name:</td>
				<td>
					<input id="id" type="hidden" name="id" value={if isset($poster->id)}"{$poster->id}"{else}""{/if} />
					<input id="poster" class="long" name="poster" type="text"
						   value={if isset($poster->poster)}"{$poster->poster}"{else}""{/if} />
					<div class="hint">Name of the MultiGroup poster</div>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input class="btn btn-success" type="submit" value="Save"/>
				</td>
			</tr>
		</table>
	</form>
</div>
