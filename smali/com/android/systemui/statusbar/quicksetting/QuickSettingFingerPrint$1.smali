.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint$1;
.super Ljava/lang/Object;
.source "QuickSettingFingerPrint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;

    const-string v1, "QuickSettingFingerPrint"

    const-string v2, "click:launch FP setting shortcut item!"

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->Log(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint$1$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingFingerPrint$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
