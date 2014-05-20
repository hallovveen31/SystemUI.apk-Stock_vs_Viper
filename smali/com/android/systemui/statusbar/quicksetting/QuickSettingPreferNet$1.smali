.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$1;
.super Ljava/lang/Object;
.source "QuickSettingPreferNet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->toggleNextState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingPreferNet;)V

    return-void
.end method
