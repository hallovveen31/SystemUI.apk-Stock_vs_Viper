.class Lcom/android/systemui/recent/RecentAppFxActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentAppFxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentAppFxActivity;->handleOnClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

.field final synthetic val$holder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$holder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 647
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$900(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/app/ActivityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$holder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$holder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    if-nez v2, :cond_2

    .line 649
    :cond_0
    const-string v2, "RecentApps"

    const-string v3, "!!!!!skip to launch on animation end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_1
    :goto_0
    return-void

    .line 653
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$200(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 654
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$200(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 656
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$900(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/HtcIfActivityManager;->skipStartingWindowOnNextActivity()V

    .line 659
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$holder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget v2, v2, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ltz v2, :cond_4

    .line 660
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$900(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/app/ActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$holder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v3, v3, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 679
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 680
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->finish()V

    goto :goto_0

    .line 663
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$holder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget-object v1, v2, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 665
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x10104000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 673
    :catch_0
    move-exception v0

    .line 675
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    const-string v2, "RecentApps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!launch activity exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
