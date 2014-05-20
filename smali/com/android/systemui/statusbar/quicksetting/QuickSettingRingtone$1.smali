.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;
.super Ljava/lang/Object;
.source "QuickSettingRingtone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1$1;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingRingtone$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    return-void
.end method
