.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;
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
    .line 753
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->DEBUG:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 758
    const-string v0, "QuickSettingReorder"

    const-string v1, "footerCancelListener.click!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel1:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$900(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->footerCancel2:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$1000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$6;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 769
    :cond_3
    return-void
.end method
