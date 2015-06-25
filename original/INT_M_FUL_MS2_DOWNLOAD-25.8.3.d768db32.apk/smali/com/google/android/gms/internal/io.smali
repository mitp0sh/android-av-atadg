.class public Lcom/google/android/gms/internal/io;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/io;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:D

.field private c:Z

.field private d:I

.field private e:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ip;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ip;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/io;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v5, -0x1

    const/4 v1, 0x3

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/io;-><init>(IDZILcom/google/android/gms/cast/ApplicationMetadata;I)V

    return-void
.end method

.method constructor <init>(IDZILcom/google/android/gms/cast/ApplicationMetadata;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/io;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/io;->b:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/io;->c:Z

    iput p5, p0, Lcom/google/android/gms/internal/io;->d:I

    iput-object p6, p0, Lcom/google/android/gms/internal/io;->e:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput p7, p0, Lcom/google/android/gms/internal/io;->f:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/io;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/io;

    iget-wide v2, p0, Lcom/google/android/gms/internal/io;->b:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/io;->b:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/io;->c:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/io;->c:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/io;->d:I

    iget v3, p1, Lcom/google/android/gms/internal/io;->d:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/io;->e:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v3, p1, Lcom/google/android/gms/internal/io;->e:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/in;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/io;->f:I

    iget v3, p1, Lcom/google/android/gms/internal/io;->f:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public fZ()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/io;->b:D

    return-wide v0
.end method

.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->e:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/io;->a:I

    return v0
.end method

.method public gi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/io;->c:Z

    return v0
.end method

.method public gj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/io;->d:I

    return v0
.end method

.method public gk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/io;->f:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/io;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/io;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/io;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/io;->e:Lcom/google/android/gms/cast/ApplicationMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/io;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/jv;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ip;->a(Lcom/google/android/gms/internal/io;Landroid/os/Parcel;I)V

    return-void
.end method
