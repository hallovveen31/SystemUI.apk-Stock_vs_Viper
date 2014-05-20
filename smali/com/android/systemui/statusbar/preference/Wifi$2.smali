.class Lcom/android/systemui/statusbar/preference/Wifi$2;
.super Ljava/lang/Object;
.source "Wifi.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/Wifi;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Wifi;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Wifi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Wifi$2;->this$0:Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Wifi;->toggleSettings()V

    const/4 v0, 0x1

    return v0
.end method
