.class public Lcom/google/android/gms/internal/hp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hq;


# instance fields
.field public final Dh:Ljava/lang/String;

.field public final Di:Z

.field public final Dj:Z

.field public final Dk:Ljava/lang/String;

.field public final Dl:[Lcom/google/android/gms/internal/hj;

.field public final Dn:Ljava/lang/String;

.field final a:I

.field final b:[I

.field public final name:Ljava/lang/String;

.field public final weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hp;->CREATOR:Lcom/google/android/gms/internal/hq;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/hj;[ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hp;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hp;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/hp;->Dh:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/hp;->Di:Z

    iput p5, p0, Lcom/google/android/gms/internal/hp;->weight:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/hp;->Dj:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/hp;->Dk:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/hp;->Dl:[Lcom/google/android/gms/internal/hj;

    iput-object p9, p0, Lcom/google/android/gms/internal/hp;->b:[I

    iput-object p10, p0, Lcom/google/android/gms/internal/hp;->Dn:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/hj;[ILjava/lang/String;)V
    .locals 11

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/hp;-><init>(ILjava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/hj;[ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hp;->CREATOR:Lcom/google/android/gms/internal/hq;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/hp;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/hp;

    iget-object v1, p0, Lcom/google/android/gms/internal/hp;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/hp;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/hp;->Dh:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/hp;->Dh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/hp;->Di:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/hp;->Di:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hp;->CREATOR:Lcom/google/android/gms/internal/hq;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hq;->a(Lcom/google/android/gms/internal/hp;Landroid/os/Parcel;I)V

    return-void
.end method
