.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;
.super Ljava/lang/Object;
.source "QuickSettingReorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 774
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 778
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 780
    :cond_0
    const-string v5, "QuickSettingReorder"

    const-string v6, "footerDoneListener.click:skip!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_1
    :goto_0
    return-void

    .line 785
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 786
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerDone:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$1100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 790
    .local v1, save_string:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 793
    .local v3, startTime:J
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 794
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 793
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 797
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "quick_setting_items_order"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 799
    const-string v5, "QuickSettingReorder"

    const-string v6, "-------------------------------------------------------------------------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v5, "QuickSettingReorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "footerDone(visible):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " content:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v1, Ljava/lang/String;

    .end local v1           #save_string:Ljava/lang/String;
    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 803
    .restart local v1       #save_string:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 806
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->separatorIndex:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_2
    if-ge v0, v2, :cond_5

    .line 807
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->qs_combine:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 810
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "quick_setting_items_order_invisible"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 812
    const-string v5, "QuickSettingReorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "footerDone(invisible):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " content:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v5, "QuickSettingReorder"

    const-string v6, "-------------------------------------------------------------------------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v5, "com.android.systemui"

    invoke-static {v5}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 818
    const-string v5, "QuickSettingReorder"

    const-string v6, "backupManager.dataChange(com.android.systemui)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 821
    iget-object v5, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$7;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
