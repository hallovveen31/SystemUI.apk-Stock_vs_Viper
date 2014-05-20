.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->mBucketId:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->getBucketId()I
    invoke-static {v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->mBucketId:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->access$302(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;I)I

    :cond_0
    const-string v1, "QuickSettingScreenshot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucketId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->mBucketId:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.album.action.VIEW_FOLDER_IN_THUMBNAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "folder_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collection_regular_bucket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->mBucketId:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Screenshots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "entry_from"

    const-string v2, "Screenshots"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    :cond_1
    return-object v4
.end method
