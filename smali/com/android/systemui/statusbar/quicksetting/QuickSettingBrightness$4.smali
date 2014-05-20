.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$4;
.super Landroid/database/ContentObserver;
.source "QuickSettingBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->updateDemoFLOstate()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$700(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V

    return-void
.end method
