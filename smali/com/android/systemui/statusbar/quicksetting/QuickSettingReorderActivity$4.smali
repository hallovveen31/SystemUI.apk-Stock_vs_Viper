.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;
.super Ljava/lang/Object;
.source "QuickSettingReorderActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DropListener;


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
    .line 622
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 9
    .parameter "fromIdx"
    .parameter "toIdx"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xc

    .line 626
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eq p1, p2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_0

    if-gez p2, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Z

    move-result v4

    if-ne v4, v8, :cond_2

    .line 631
    const-string v4, "QuickSettingReorder.DRAG"

    const-string v5, "--------------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v4, "QuickSettingReorder.DRAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_2
    const/4 v1, 0x0

    .line 637
    .local v1, removeLastVisibleItem:Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)I

    move-result v4

    if-lt v4, v7, :cond_3

    if-le p1, v7, :cond_3

    if-gt p2, v7, :cond_3

    .line 640
    const/4 v1, 0x1

    .line 644
    :cond_3
    if-eq p1, p2, :cond_4

    .line 646
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 649
    .local v3, tempItem:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 651
    if-eqz v1, :cond_4

    .line 652
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToastRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 653
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToastRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 657
    if-ne p2, v7, :cond_7

    .line 658
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tempItem:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .line 664
    .restart local v3       #tempItem:Ljava/lang/Integer;
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 669
    .end local v3           #tempItem:Ljava/lang/Integer;
    :cond_4
    const/4 v0, 0x0

    .local v0, loop:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_2
    if-ge v0, v2, :cond_5

    .line 671
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_8

    .line 673
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$002(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;I)I

    .line 678
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Z

    move-result v4

    if-ne v4, v8, :cond_9

    .line 680
    const-string v4, "QuickSettingReorder.DRAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v4, "QuickSettingReorder.DRAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reorderListener.drop("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") separatorIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v4, "QuickSettingReorder.DRAG"

    const-string v5, "--------------------------------------------------------------------"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/widget/BaseAdapter;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 688
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->reorderAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 691
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->updateFooterContent()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)V

    goto/16 :goto_0

    .line 661
    .end local v0           #loop:I
    .end local v2           #size:I
    .restart local v3       #tempItem:Ljava/lang/Integer;
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tempItem:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #tempItem:Ljava/lang/Integer;
    goto/16 :goto_1

    .line 669
    .end local v3           #tempItem:Ljava/lang/Integer;
    .restart local v0       #loop:I
    .restart local v2       #size:I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 685
    :cond_9
    const-string v4, "QuickSettingReorder.DRAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reorderListener.drop("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") separatorIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
