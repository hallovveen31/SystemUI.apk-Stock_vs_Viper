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

.field private final synthetic val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$11(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/app/ActivityManager;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "RecentApps"

    const-string v3, "!!!!!skip to launch on animation end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$6(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->phoneWindow:Landroid/view/Window;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$6(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$11(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/HtcIfActivityManager;->skipStartingWindowOnNextActivity()V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget v2, v2, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->am:Landroid/app/ActivityManager;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$11(Lcom/android/systemui/recent/RecentAppFxActivity;)Landroid/app/ActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v3, v3, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->val$viewHolder:Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->td:Lcom/android/systemui/recent/TaskDescription;

    iget-object v1, v2, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    const v2, 0x10104000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$7;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "RecentApps"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "!!!!!launch activity exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
