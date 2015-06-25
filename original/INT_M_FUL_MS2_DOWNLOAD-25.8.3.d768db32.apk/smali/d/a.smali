.class public final Ld/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;

.field b:Lcom/google/android/gms/common/g;

.field c:Lcom/google/android/gms/internal/nz;

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld/a;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/a;->d:Z

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/google/android/gms/common/g;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/e;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/google/android/gms/common/c; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Lcom/google/android/gms/common/g;

    invoke-direct {v0}, Lcom/google/android/gms/common/g;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/common/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/c;-><init>(I)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/common/g;)Lcom/google/android/gms/internal/nz;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/g;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/nz$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/nz;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ld/a$a;
    .locals 2

    new-instance v1, Ld/a;

    invoke-direct {v1, p0}, Ld/a;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v1}, Ld/a;->a()V

    invoke-virtual {v1}, Ld/a;->b()Ld/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Ld/a;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ld/a;->c()V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Ld/a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld/a;->c()V

    :cond_0
    iget-object v0, p0, Ld/a;->a:Landroid/content/Context;

    invoke-static {v0}, Ld/a;->a(Landroid/content/Context;)Lcom/google/android/gms/common/g;

    move-result-object v0

    iput-object v0, p0, Ld/a;->b:Lcom/google/android/gms/common/g;

    iget-object v0, p0, Ld/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ld/a;->b:Lcom/google/android/gms/common/g;

    invoke-static {v0, v1}, Ld/a;->a(Landroid/content/Context;Lcom/google/android/gms/common/g;)Lcom/google/android/gms/internal/nz;

    move-result-object v0

    iput-object v0, p0, Ld/a;->c:Lcom/google/android/gms/internal/nz;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/a;->d:Z

    return-void
.end method

.method public b()Ld/a$a;
    .locals 4

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld/a;->b:Lcom/google/android/gms/common/g;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld/a;->c:Lcom/google/android/gms/internal/nz;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Ld/a;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "AdvertisingIdService is not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Ld/a$a;

    iget-object v1, p0, Ld/a;->c:Lcom/google/android/gms/internal/nz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nz;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ld/a;->c:Lcom/google/android/gms/internal/nz;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/nz;->a(Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ld/a$a;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingIdClient"

    const-string v2, "GMS remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ld/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->b:Lcom/google/android/gms/common/g;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Ld/a;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/a;->a:Landroid/content/Context;

    iget-object v1, p0, Ld/a;->b:Lcom/google/android/gms/common/g;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/a;->d:Z

    iput-object v3, p0, Ld/a;->c:Lcom/google/android/gms/internal/nz;

    iput-object v3, p0, Ld/a;->b:Lcom/google/android/gms/common/g;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingIdClient"

    const-string v2, "AdvertisingIdClient unbindService failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
