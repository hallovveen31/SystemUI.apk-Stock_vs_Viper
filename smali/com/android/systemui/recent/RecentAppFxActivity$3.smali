.class Lcom/android/systemui/recent/RecentAppFxActivity$3;
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
    .line 346
    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$3;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 350
    const-string v0, "RecentApps"

    const-string v1, "clearAll clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$3;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$100(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentsGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsGridView;->isClicking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$3;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->actionClearAll:Lcom/htc/widget/ActionBarItemView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$300(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/htc/widget/ActionBarItemView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$3;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridView:Lcom/android/systemui/recent/RecentsGridView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$100(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentsGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsGridView;->setDisableItems()V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$3;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #calls: Lcom/android/systemui/recent/RecentAppFxActivity;->clearAllItems()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$400(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    goto :goto_0
.end method
