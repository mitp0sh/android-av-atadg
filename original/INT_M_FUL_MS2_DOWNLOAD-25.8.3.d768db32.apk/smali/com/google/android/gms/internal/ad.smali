.class public final Lcom/google/android/gms/internal/ad;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ey;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/json/JSONObject;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/gs;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/gs;->wS:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ad;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ad;->b:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/ad;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ad;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public aF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public aG()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public aH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->c:Ljava/lang/String;

    return-object v0
.end method
