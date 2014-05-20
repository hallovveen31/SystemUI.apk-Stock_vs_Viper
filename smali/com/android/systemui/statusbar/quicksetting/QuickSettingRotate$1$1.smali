.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1$1;
.super Landroid/os/AsyncTask;
.source "QuickSettingRotate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->access$100(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1$1;->this$1:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRotate;)Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
