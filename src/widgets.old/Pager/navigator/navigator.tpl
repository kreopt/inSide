<button class="PrevPage">&lt;&lt;</button>
{for $i=1 to $left}
    <button class="PageIndex {if $i==$currentPage}Selected{/if}" data-idx="{$i}">{$i}</button>
{/for}
{if $currentPage<$pageCount-3}
    {if $currentPage>5}
    <button class="PageDel">...</button>
        {for $i=$currentPage-1 to $middle}
            <button class="PageIndex {if $i==$currentPage}Selected{/if}" data-idx="{$i}">{$i}</button>
        {/for}
    {/if}
    <button class="PageDel">...</button>
{else}
    {if $pageCount>8}<button class="PageDel">...</button>{/if}
{/if}
{if $pageCount>6}
    {for $i=$right to $pageCount}
        <button class="PageIndex {if $i==$currentPage}Selected{/if}" data-idx="{$i}">{$i}</button>
    {/for}
{/if}
<button class="NextPage">&gt;&gt;</button>