.class Lde/gdata/messaging/isfaserverdefinitions/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/gdata/messaging/isfaserverdefinitions/IRpcService;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lde/gdata/messaging/isfaserverdefinitions/a;->a:Landroid/os/IBinder;

    .line 125
    return-void
.end method


# virtual methods
.method public addPhishingException(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 230
    :try_start_0
    const-string v0, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lde/gdata/messaging/isfaserverdefinitions/a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 233
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    return-void

    .line 236
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lde/gdata/messaging/isfaserverdefinitions/a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public getSupressedNumbers()Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 214
    :try_start_0
    const-string v0, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lde/gdata/messaging/isfaserverdefinitions/a;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 216
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 217
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 220
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public hasPremiumEnabled()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 140
    :try_start_0
    const-string v4, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Lde/gdata/messaging/isfaserverdefinitions/a;->a:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 142
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 143
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 149
    return v0

    :cond_0
    move v0, v1

    .line 143
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isMaliciousUrl(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 157
    :try_start_0
    const-string v3, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lde/gdata/messaging/isfaserverdefinitions/a;->a:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 160
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 161
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 164
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 167
    return v0

    .line 164
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isPasswordCorrect([B)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 246
    :try_start_0
    const-string v3, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 248
    iget-object v3, p0, Lde/gdata/messaging/isfaserverdefinitions/a;->a:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 249
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 250
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 253
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    return v0

    .line 253
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public shouldBeFiltered(Ljava/lang/String;II)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 194
    :try_start_0
    const-string v3, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v3, p0, Lde/gdata/messaging/isfaserverdefinitions/a;->a:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 199
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 200
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 203
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    return v0

    .line 203
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public shouldSMSBeBlocked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 175
    :try_start_0
    const-string v3, "de.gdata.messaging.isfaserverdefinitions.IRpcService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lde/gdata/messaging/isfaserverdefinitions/a;->a:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 179
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 180
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 183
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 186
    return v0

    .line 183
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
