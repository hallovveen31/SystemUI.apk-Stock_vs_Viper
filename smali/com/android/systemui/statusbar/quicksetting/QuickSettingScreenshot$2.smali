.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;
.super Ljava/lang/Object;
.source "QuickSettingScreenshot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBucketId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->mBucketId:I

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->mBucketId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->mBucketId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->getBucketId()I

    move-result v0

    return v0
.end method

.method private getBucketId()I
    .locals 4

    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Screenshots"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const/4 v2, -0x1

    :goto_1
    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    const-string v1, "QuickSettingScreenshot"

    const-string v2, "click:launch more shortcut item!"

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->disableQuickTipsFlag()V

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingScreenshot$2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
