.class Lcom/android/systemui/statusbar/preference/GPS$3;
.super Ljava/lang/Object;
.source "GPS.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/GPS;->collapseStatusBar()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/GPS;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/GPS;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
