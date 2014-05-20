.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;
.super Landroid/os/AsyncTask;
.source "QuickSettingSyncAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->toggleSyncAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

.field final synthetic val$syncing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;->val$syncing:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;->val$syncing:Z

    if-eqz v2, :cond_1

    invoke-static {v5, v5}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->mHandler:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->mHandler:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iput v6, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->mHandler:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v5

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    const-string v3, "QuickSettingSyncAll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_2

    const-string v2, "-1"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->syncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->access$800(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;[Landroid/accounts/Account;)V

    goto :goto_0

    :cond_2
    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1
.end method
