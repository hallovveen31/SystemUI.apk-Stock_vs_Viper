.class Lcom/android/systemui/recent/RecentsPanelView$4;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Lcom/android/systemui/recent/RAMMeter$onTasksCleared;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->initClearRecentApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTasksDescriptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$0(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$13(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$10(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsPanelView;->access$14(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$4;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    return-void
.end method
