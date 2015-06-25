.class public abstract Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lde/gdata/messaging/isfaserverdefinitions/IRpcService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {p0, p0, v0}, Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lde/gdata/messaging/isfaserverdefinitions/IRpcService;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lde/gdata/messaging/isfaserverdefinitions/IRpcService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lde/gdata/messaging/isfaserverdefinitions/IRpcService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lde/gdata/messaging/isfaserverdefinitions/a;

    invoke-direct {v0, p0}, Lde/gdata/messaging/isfaserverdefinitions/a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;->hasPremiumEnabled()Z

    move-result v2

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    :sswitch_2
    const-string v2, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {p0, v2}, Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;->isMaliciousUrl(Ljava/lang/String;)Z

    move-result v2

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    :sswitch_3
    const-string v2, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {p0, v2, v3}, Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;->shouldSMSBeBlocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    :sswitch_4
    const-string v2, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 84
    invoke-virtual {p0, v2, v3, v4}, Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;->shouldBeFiltered(Ljava/lang/String;II)Z

    move-result v2

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    :sswitch_5
    const-string v0, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;->getSupressedNumbers()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :sswitch_6
    const-string v0, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;->addPhishingException(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 108
    :sswitch_7
    const-string v2, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 111
    invoke-virtual {p0, v2}, Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;->isPasswordCorrect([B)Z

    move-result v2

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
