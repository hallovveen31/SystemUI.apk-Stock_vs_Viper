.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$1;
.super Ljava/lang/Object;
.source "QuickSettingMobileData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->toggleNextState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)V

    return-void
.end method
