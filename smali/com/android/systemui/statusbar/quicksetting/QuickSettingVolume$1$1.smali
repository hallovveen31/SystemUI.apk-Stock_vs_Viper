.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume$1$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingVolume;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
