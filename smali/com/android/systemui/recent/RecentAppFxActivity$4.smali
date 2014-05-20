.class Lcom/android/systemui/recent/RecentAppFxActivity$4;
.super Ljava/lang/Object;
.source "RecentAppFxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentAppFxActivity;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentAppFxActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$4;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 366
    const-string v2, "RecentApps"

    const-string v3, "RunningMem clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$4;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$500(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/htc/widget/ActionBarItemView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 369
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$RunningServicesActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$4;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    const v3, 0x304000c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 372
    .local v1, opts:Landroid/app/ActivityOptions;
    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$4;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/recent/RecentAppFxActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 373
    return-void
.end method
