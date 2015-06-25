.class Lcom/google/android/gms/maps/model/ab;
.super Lcom/google/android/gms/maps/model/internal/o$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/TileProvider;

.field final synthetic b:Lcom/google/android/gms/maps/model/TileOverlayOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;Lcom/google/android/gms/maps/model/TileProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/ab;->b:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    iput-object p2, p0, Lcom/google/android/gms/maps/model/ab;->a:Lcom/google/android/gms/maps/model/TileProvider;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/internal/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/ab;->a:Lcom/google/android/gms/maps/model/TileProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/TileProvider;->getTile(III)Lcom/google/android/gms/maps/model/Tile;

    move-result-object v0

    return-object v0
.end method
