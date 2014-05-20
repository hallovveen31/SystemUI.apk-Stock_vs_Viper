.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;
.super Landroid/widget/BaseAdapter;
.source "QuickSettingReorderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private typeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 518
    packed-switch p1, :pswitch_data_0

    .line 526
    const-string v0, "TYPE_UNKNOWN"

    :goto_0
    return-object v0

    .line 521
    :pswitch_0
    const-string v0, "TYPE_SEPARATOR"

    goto :goto_0

    .line 523
    :pswitch_1
    const-string v0, "TYPE_NORMAL"

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateItemContent(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "position"

    .prologue
    .line 594
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_1

    .line 617
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 597
    .restart local p1
    :cond_1
    const v3, 0x7f070049

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 599
    .local v2, itemText:Lcom/htc/widget/HtcListItem1LineCenteredText;
    const v3, 0x7f070048

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 602
    .local v0, itemIcon:Landroid/widget/ImageView;
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 604
    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getQSItemInfo(Landroid/content/res/Resources;I)Landroid/util/Pair;

    move-result-object v1

    .line 607
    .local v1, itemInfo:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-nez v1, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 608
    if-nez v1, :cond_4

    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 615
    .end local v1           #itemInfo:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    instance-of v3, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    .line 616
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/htc/widget/HtcListItem;->setFirstComponentAlign(Z)V

    goto :goto_0

    .line 607
    .restart local v1       #itemInfo:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local p1
    :cond_3
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .line 608
    :cond_4
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 504
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_0
    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 498
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 534
    const/high16 v0, -0x8000

    .line 536
    .local v0, item_type:I
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 544
    :goto_0
    return v0

    .line 541
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 558
    .local v4, startTime:J
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->getItemViewType(I)I

    move-result v6

    .line 561
    .local v6, view_type:I
    if-nez v6, :cond_2

    const v3, 0x7f040064

    .line 565
    .local v3, layout_resource:I
    :goto_0
    const/4 v2, 0x0

    .line 568
    .local v2, generateLayout:Z
    if-nez p2, :cond_0

    .line 570
    const/4 v2, 0x1

    .line 571
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->layoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v3, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 575
    :cond_0
    instance-of v7, p2, Lcom/htc/widget/HtcListItemSeparator;

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 577
    check-cast v7, Lcom/htc/widget/HtcListItemSeparator;

    const v8, 0x7f0a00e5

    invoke-virtual {v7, v9, v8}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 583
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v4

    .line 585
    .local v0, elaspe:J
    iget-object v7, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 586
    const-string v7, "QuickSettingReorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getView:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->typeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_1
    return-object p2

    .line 561
    .end local v0           #elaspe:J
    .end local v2           #generateLayout:Z
    .end local v3           #layout_resource:I
    :cond_2
    const v3, 0x7f040063

    goto :goto_0

    .line 581
    .restart local v2       #generateLayout:Z
    .restart local v3       #layout_resource:I
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->updateItemContent(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$3;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
