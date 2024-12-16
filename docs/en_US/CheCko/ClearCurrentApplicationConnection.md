# Clear current application connection

We should have a permissions menu in CheCko to let user be able to remove connection from web application, but currently it's not implemented. If users really want to remove it, they can follow this sections to remove what they want. And, keep in mind that always backup your important data before you do that. It's dangerous to operate wallet store directly.

## Open wallet database storage

If user really need to change their authorized account to web application, they can operation wallet database manually. They just need to find tables named `rpcAuths` and `rpcMicrochains` in database `CheCkoBaseDatabase`, find the right item with the domain name of the web application, then remove the application, then they can reconnect CheCko from web application.

<br>
<center>

<kbd>
  <img src="assets/2-10-1.png" style="max-height:100%; height: 600px; width: auto; display: block;" />
</kbd>
<kbd>
  <img src="assets/2-10-2.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

</center>

## Remove

Be careful, you should click the **garbage box** to remove one item from the table. Another one button is to remove all items to clear the table, you shouldn't use it.

<br>
<center>

<kbd>
  <img src="assets/2-10-3.png" style="max-width: 100%; width: 768px; height: auto; display: block;" />
</kbd>

</center>
