<table>
    <thead>
    <tr>
        <th>
            Name
        </th>
        <th>
            Banner
        </th>
    </tr>
    </thead>
    <tbody>
    @foreach($categories as $c)
        <tr>
            <td>
                {{ $c->name }}
            </td>
            <td>
                {{ $c->banner }}
            </td>
        </tr>
    @endforeach
    </tbody>
</table>
