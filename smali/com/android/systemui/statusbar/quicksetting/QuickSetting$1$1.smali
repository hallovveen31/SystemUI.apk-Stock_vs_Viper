.class Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1$1;
.super Landroid/os/AsyncTask;
.source "QuickSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "args"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/quicksetting/QuickSetting$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSetting;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Ljava/lang/String;)V

    .line 63
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method