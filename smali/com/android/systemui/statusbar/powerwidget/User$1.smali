.class Lcom/android/systemui/statusbar/powerwidget/User$1;
.super Landroid/os/AsyncTask;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/User;->queryForUserInformation()V
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/User;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$userId:I

.field private final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/User;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/User;

    iput-object p2, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->val$userName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->val$userId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v3, 0x0

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/User;

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/User;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->val$userName:Ljava/lang/String;

    const/4 v6, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->val$userId:I

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/User;

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/User;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v6, v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v12, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "display_name"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v9, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/User;

    iget-object v0, v0, Lcom/android/systemui/statusbar/powerwidget/User;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/User$1;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/User;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/User;->setTitle(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/User;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/powerwidget/User;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/User;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    #setter for: Lcom/android/systemui/statusbar/powerwidget/User;->mAvatar:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/powerwidget/User;->access$0(Lcom/android/systemui/statusbar/powerwidget/User;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/User;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/powerwidget/User;->mUserInfoTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/User;->access$1(Lcom/android/systemui/statusbar/powerwidget/User;Landroid/os/AsyncTask;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/User$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/User;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/User;->onRefresh()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/User$1;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
