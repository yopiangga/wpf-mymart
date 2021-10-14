
<?php foreach ($customers as $customer) { ?>
    <h3><?= $customer->nama ?></h3>
    <?php foreach ($orders as $order) { ?>
        <?php if ($order->customer_id == $customer->id) { ?>
            <h5>Order id : </h5> <?php if ($order->customer_id == $customer->id) echo "<h5>$order->id</h5>" ?>
            <h5>Item : </h5>
            <?php foreach ($order_items as $order_item) { ?>
                <?php foreach ($items as $item) { ?>
                    <?php if ($order_item->item_id == $item->id && $order->id == $order_item->order_id) echo "<li>$item->name</li>" ?>
                <?php } ?>
            <?php } ?>
        <?php } ?>

    <?php } ?>
    <hr>
<?php } ?>