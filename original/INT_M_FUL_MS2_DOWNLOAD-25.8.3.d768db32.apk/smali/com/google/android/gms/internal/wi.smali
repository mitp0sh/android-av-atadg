.class final Lcom/google/android/gms/internal/wi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/wi;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wi;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/wi;->b:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput-object p3, p0, Lcom/google/android/gms/internal/wi;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/wi;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/wi;->e:Z

    return-void
.end method


# virtual methods
.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->b:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public getApplicationStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wi;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getWasLaunched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/wi;->e:Z

    return v0
.end method
