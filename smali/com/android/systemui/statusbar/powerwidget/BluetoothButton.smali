.class public Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;
.super Lcom/android/systemui/statusbar/powerwidget/Toggle;
.source "BluetoothButton.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Toggle;-><init>()V

    const v0, 0x7f0a013d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->setTitle(I)V

    return-void
.end method

.method private convertState(I)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->UNKNOWN:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->DISABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->ENABLED:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_ON:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->TURNING_OFF:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/powerwidget/Toggle$State;->UNKNOWN:Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->convertState(I)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    goto :goto_0
.end method

.method protected getIconForState(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f02057e

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02057d

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "Venom"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bluetooth State: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->convertState(I)Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    goto :goto_0
.end method

.method protected onToggleClick()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method

.method protected onToggleLongClick()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
