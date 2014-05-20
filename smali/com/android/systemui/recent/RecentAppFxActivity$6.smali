.class Lcom/android/systemui/recent/RecentAppFxActivity$6;
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

    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string v1, "RecentApps"

    const-string v2, "RunningMem clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->actionRunningMem:Lcom/htc/widget/ActionBarItemView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$10(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/htc/widget/ActionBarItemView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$RunningServicesActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentAppFxActivity$6;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    iget-object v2, v2, Lcom/android/systemui/recent/RecentAppFxActivity;->mContext:Landroid/content/Context;

    const v3, 0x304000c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/recent/RecentAppFxActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
