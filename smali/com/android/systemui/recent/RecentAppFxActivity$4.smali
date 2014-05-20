.class Lcom/android/systemui/recent/RecentAppFxActivity$4;
.super Ljava/lang/Object;
.source "RecentAppFxActivity.java"

# interfaces
.implements Lcom/android/systemui/recent/RAMMeter$onTasksCleared;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentAppFxActivity;->initClearRecentApps()V
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

    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$4;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

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

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$4;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$0(Lcom/android/systemui/recent/RecentAppFxActivity;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onClicked()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$4;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    #getter for: Lcom/android/systemui/recent/RecentAppFxActivity;->mRecentGridViewAdapter:Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;
    invoke-static {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->access$7(Lcom/android/systemui/recent/RecentAppFxActivity;)Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentAppFxActivity$RecentGridViewAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$4;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->clearRecentTasksList()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$4;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentAppFxActivity;->finish()V

    return-void
.end method
