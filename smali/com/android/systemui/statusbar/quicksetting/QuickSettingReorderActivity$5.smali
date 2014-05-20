.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;
.super Ljava/lang/Object;
.source "QuickSettingReorderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 696
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 708
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$802(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingReorderActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
