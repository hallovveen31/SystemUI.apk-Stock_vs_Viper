.class Lcom/android/systemui/statusbar/preference/GPS$1;
.super Ljava/lang/Object;
.source "GPS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/GPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/GPS;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/GPS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/GPS$1;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS$1;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/GPS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS$1;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/GPS;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
