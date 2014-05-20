.class Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;
.super Landroid/os/AsyncTask;
.source "SyncAllButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->toggleSyncAll()V
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    #calls: Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->checkIsSync()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->access$1(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v6, v6}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mHandler:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;
    invoke-static {v4}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->access$0(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mHandler:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;
    invoke-static {v4}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->access$0(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;->removeMessages(I)V

    iput v7, v2, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mHandler:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;
    invoke-static {v4}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->access$0(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;->sendMessage(Landroid/os/Message;)Z

    return-object v6

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    iget-object v4, v4, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_2

    const-string v3, "-1"

    :goto_1
    const-string v4, "Venom"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    #calls: Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->syncCheckedAuthorityForAllAccount([Landroid/accounts/Account;)V
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->access$2(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;[Landroid/accounts/Account;)V

    goto :goto_0

    :cond_2
    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1
.end method
