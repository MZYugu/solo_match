class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '演劇'},
    { id: 3, name: '古典芸能'},
    { id: 4, name: 'スポーツ観戦'},
    { id: 5, name: 'トークショー'},
    { id: 6, name: '握手会・グリーティング'},
    { id: 7, name: 'ライブ・コンサート・フェス'},
    { id: 8, name: '即売会'},
    { id: 9, name: '展示会'},
    { id: 10, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :events
end