.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$1;
.super Ljava/lang/Object;
.source "QuickSettingWifi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->toggleWifiState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifi;)V

    return-void
.end method
